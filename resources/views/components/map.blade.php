@once
    <style>
        .ymaps-2-1-79-copyrights-pane {
            display: none;
        }
    </style>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=7996e89b-a008-42d6-9408-258858c8afe3" type="text/javascript"></script>
@endonce
<div id="{{$elId}}" style="width: 100%;height: 400px"></div>
@if(!($id ?? ''))
    <input hidden id="range" name="range">
    <input hidden id="cost" name="cost">
    <input hidden id="fromText" name="from_text">
    <input hidden id="toText" name="to_text">
@endif
<script>
    ymaps.ready(init);

    function init() {
        // Стоимость за километр.
        var DELIVERY_TARIFF = 100,
            // Минимальная стоимость.
            MINIMUM_COST = 2000,
            myMap = new ymaps.Map('{{$elId}}', {
                center: [43.23519652436369,76.90973744115067],
                zoom: 9,
                controls: []
            }),
            // Создадим панель маршрутизации.
            routePanelControl = new ymaps.control.RoutePanel({
                options: {
                    @if($id ?? '') visible: false, @endif
                    // Добавим заголовок панели.
                    showHeader: true,
                    title: 'Расчёт доставки'
                }
            }),
            zoomControl = new ymaps.control.ZoomControl({
                options: {
                    size: 'small',
                    float: 'none',
                    position: {
                        bottom: 145,
                        right: 10
                    }
                }
            });
        // Пользователь сможет построить только автомобильный маршрут.
        routePanelControl.routePanel.options.set({
            types: {auto: true}
        });

        // Если вы хотите задать неизменяемую точку "откуда", раскомментируйте код ниже.
        @if($id ?? '')
            routePanelControl.routePanel.state.set({
                fromEnabled: false,
                toEnabled: false,
                from: '{{$from}}',
                to: '{{$to}}'
            });
        @endif

        myMap.controls.add(routePanelControl).add(zoomControl);

        // Получим ссылку на маршрут.
            routePanelControl.routePanel.getRouteAsync().then(function (route) {

                // Зададим максимально допустимое число маршрутов, возвращаемых мультимаршрутизатором.
                route.model.setParams({results: 1}, true);

                // Повесим обработчик на событие построения маршрута.
                route.model.events.add('requestsuccess', function () {
                    var activeRoute = route.getActiveRoute();
                    if (activeRoute) {
                        // Получим протяженность маршрута.
                        var length = route.getActiveRoute().properties.get("distance"),
                            v = 80000,
                            // Вычислим стоимость доставки.
                            price = calculate(Math.round(length.value / 1000)), left = ''
                        @if(($id ?? '') && $is_applied)
                        @php
                            $hours = (now()->diff($applied)->h > 8) ? 8 : now()->diff($applied)->h;
                        @endphp
                            var time = {{(now()->diffInDays($applied) * 8 + $hours)}}
                            left += `<span>Осталось: ${getDeliveryTime(length.value / v - time)}</span><br/>

                                    <div class="progress">
                                      <div class="progress-bar" role="progressbar" style="width: ${(time / (length.value / v) * 100)}%"></div>
                                    </div>`
                        @endif
                        var balloonContentLayout = ymaps.templateLayoutFactory.createClass(
                                // '<span>Из: ' + routePanelControl.routePanel.state._data.from + '.</span><br/>' +
                                // '<span>В: ' + routePanelControl.routePanel.state._data.to + '.</span><br/>' +
                                '<span>Расстояние: ' + length.text + '.</span><br/>' +
                                '<span>Время доставки: ' + getDeliveryTime(length.value / v)  + '</span><br/>' + left +
                                '<span style="font-weight: bold; font-style: italic">Стоимость доставки: ' + price + ' тг.</span>');
                        // Зададим этот макет для содержимого балуна.
                        route.options.set('routeBalloonContentLayout', balloonContentLayout);
                        console.log(length)
                        // Откроем балун.
                        activeRoute.balloon.open();
                        console.log(routePanelControl.routePanel)
                        @if(!$id)
                            document.getElementById('range').value = length.text
                            document.getElementById('cost').value = price
                            document.getElementById('fromText').value = routePanelControl.routePanel.state._data.from
                            document.getElementById('toText').value = routePanelControl.routePanel.state._data.to
                        @endif
                    }
                });

            });
        // Функция, вычисляющая стоимость доставки.
        function calculate(routeLength) {
            return Math.round(Math.max(routeLength * DELIVERY_TARIFF, MINIMUM_COST) / 100) * 100;
        }
    }
</script>
@once
    <script>
        function getDeliveryTime(time) {
            if(time < 0) {
                return '0 ч.'
            }
            console.log(time)
            let text = ''
            let days = Math.floor(time / 8)
            if(days > 0)
                text += days + ' д. '
            let hours = Math.ceil(time - days * 8)
            if (hours > 0)
                text += hours + ' ч.'
            return text
        }
    </script>
@endonce
