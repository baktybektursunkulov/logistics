<x-app-layout>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=7996e89b-a008-42d6-9408-258858c8afe3" type="text/javascript"></script>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Contacts') }}
        </h2>
    </x-slot>
    <div class="container py-5">
        <div class="t555">
            <div class="t-container" style="margin:0 auto;">
                <div class="t-col t-col_5 "> <div class="t555__contentbox py-4" >
                        <div class="t555__contentwrapper">
                            <div class="t555__title t-heading t-heading_sm" style="" field="title">Наши контакты</div>
                            <div class="t-text t-text_md" style="" field="text">
                                <strong>+7 700 000 0000</strong>
                                <strong>Единый номер</strong>
                                <br>Бизнес-центр "Арман", улица Сейфуллина 458/1, город Алматы</div>

                        </div>
                    </div>
                </div>
                <div>
                </div>
            <style>
                body, html {
                    padding: 0;
                    margin: 0;
                    width: 100%;
                    height: 100%;
                }
                #map {
                    width: 1200px;
                    height: 500px;
                }
            </style>
            <div id="map"></div>

            <script>
                var myMap;


                // Дождёмся загрузки API и готовности DOM.
                ymaps.ready(init);

                function init () {
                    // Создание экземпляра карты и его привязка к контейнеру с
                    // заданным id ("map").
                    myMap = new ymaps.Map('map', {
                        // При инициализации карты обязательно нужно указать
                        // её центр и коэффициент масштабирования.
                        center: [43.228788, 76.898358], // Москва
                        zoom: 15
                    }, {
                        searchControlProvider: 'yandex#search'
                    });
                   var myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
                        hintContent: 'Собственный значок метки',
                        balloonContent: 'Это красивая метка'
                    },{})
                    myMap.geoObjects
                        .add(myPlacemark)
                }

            </script>
            </div>


</x-app-layout>
