<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body
	style="padding: 0px; margin: 0px; background-color: #fff; font-family: arial, helvetica, sans-serif, verdana, 'Open Sans'">

	<!-- #region Jssor Slider Begin -->
	<!-- Generator: Jssor Slider Composer -->
	<!-- Source: https://www.jssor.com/demos/full-window-for-pc.slider/=edit -->
	<script src="js/jssor.slider-28.0.0.min.js" type="text/javascript"></script>
	<script type="text/javascript">
        window.jssor_1_slider_init = function() {

            var jssor_1_options = {
              $Idle: 2000,
              $SlideEasing: $Jease$.$InOutSine,
              $DragOrientation: 3,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 16,
                $SpacingY: 16
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            //make sure to clear margin of the slider container element
            jssor_1_slider.$Elmt.style.margin = "";

            /*#region responsive code begin*/

            /*
                parameters to scale jssor slider to fill parent container

                MAX_WIDTH
                    prevent slider from scaling too wide
                MAX_HEIGHT
                    prevent slider from scaling too high, default value is original height
                MAX_BLEEDING
                    prevent slider from bleeding outside too much, default value is 1
                    0: contain mode, allow up to 0% to bleed outside, the slider will be all inside parent container
                    1: cover mode, allow up to 100% to bleed outside, the slider will cover full area of parent container
                    0.1: flex mode, allow up to 10% to bleed outside, this is better way to make full window slider, especially for mobile devices
            */

            var MAX_WIDTH = 3000;
            var MAX_HEIGHT = 3000;
            var MAX_BLEEDING = 1;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {
                    var originalWidth = jssor_1_slider.$OriginalWidth();
                    var originalHeight = jssor_1_slider.$OriginalHeight();

                    var containerHeight = containerElement.clientHeight || originalHeight;

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);
                    var expectedHeight = Math.min(MAX_HEIGHT || containerHeight, containerHeight);

                    //scale the slider to expected size
                    jssor_1_slider.$ScaleSize(expectedWidth, expectedHeight, MAX_BLEEDING);

                    //position slider at center in vertical orientation
                    jssor_1_slider.$Elmt.style.top = ((containerHeight - expectedHeight) / 2) + "px";

                    //position slider at center in horizontal orientation
                    jssor_1_slider.$Elmt.style.left = ((containerWidth - expectedWidth) / 2) + "px";
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            function OnOrientationChange() {
                ScaleSlider();
                window.setTimeout(ScaleSlider, 800);
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", OnOrientationChange);
            /*#endregion responsive code end*/
        };
    </script>
	<style>
html {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

body {
	position: relative;
	margin: 0;
	padding: 0;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

/* jssor slider loading skin spin css */
.jssorl-009-spin img {
	animation-name: jssorl-009-spin;
	animation-duration: 1.6s;
	animation-iteration-count: infinite;
	animation-timing-function: linear;
}

@
keyframes jssorl-009-spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}

}

/*jssor slider bullet skin 106 css*/
.jssorb106 {
	position: absolute;
}

.jssorb106 .i {
	position: absolute;
	cursor: pointer;
}

.jssorb106 .i .b {
	fill: #000;
	fill-opacity: 0.5;
	stroke: #fff;
	stroke-width: 1800;
	stroke-miterlimit: 10;
	stroke-opacity: 0.8;
}

.jssorb106 .i:hover .b {
	fill: #fff;
	fill-opacity: 1;
	stroke: #2b1908;
	stroke-opacity: 1;
}

.jssorb106 .iav .b {
	fill: #fff;
	fill-opacity: 1;
	stroke-width: 1800;
	stroke: #46d1d3;
	stroke-opacity: 0.6;
}

.jssorb106 .i.idn {
	opacity: .3;
}

.jssora051 {
	display: block;
	position: absolute;
	cursor: pointer;
}

.jssora051 .a {
	fill: none;
	stroke: #fff;
	stroke-width: 360;
	stroke-miterlimit: 10;
}

.jssora051:hover {
	opacity: .8;
}

.jssora051.jssora051dn {
	opacity: .5;
}

.jssora051.jssora051ds {
	opacity: .3;
	pointer-events: none;
}
</style>
	<div
		style="position: relative; top: 0; left: 0; width: 100%; height: 100%; overflow: hidden;">
		<div id="jssor_1"
			style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1366px; height: 768px; overflow: hidden; visibility: hidden;">
			<!-- Loading Screen -->
			<div data-u="loading" class="jssorl-009-spin"
				style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0, 0, 0, 0.7);">
				<img
					style="margin-top: -19px; position: relative; top: 50%; width: 38px; height: 38px;"
					src="img/spin.svg" />
			</div>
			<div data-u="slides"
				style="cursor: default; position: relative; top: 0px; left: 0px; width: 1366px; height: 768px; overflow: hidden;">
				<div>
					<img data-u="image" src="img/001.jpg" />
					<div
						style="left: 380px; top: 210px; width: 300px; height: 250px; position: absolute; color: #ffffff; font-size: 16px; line-height: 1.88; text-align: left; padding: 10px 10px 10px 10px; box-sizing: border-box; background-color: rgba(255, 188, 5, 0.8); background-clip: padding-box;">
						Layout Settings <br />
						<br /> Slider Size: 1366 x 768<br /> Scale To: Full Window (Flex
						Mode) <br /> Max Width: 3000<br /> Max Height: 3000<br />
						Bleeding: 100%
					</div>
				</div>
				<div>
					<img data-u="image" src="img2/002.jpg" />
				</div>
				<div>
					<img data-u="image" src="img2/003.jpg" />
				</div>
				<div>
					<img data-u="image" src="img2/004.jpg" />
				</div>
				<div>
					<img data-u="image" src="img2/005.jpg" />
				</div>
				<div>
					<img data-u="image" src="img2/006.jpg" />
				</div>
				<div>
					<img data-u="image" src="img2/007.jpg" />
				</div>
				<div>
					<img data-u="image" src="img2/008.jpg" />
				</div>
			</div>
			<a data-scale="0" href="https://www.jssor.com"
				style="display: none; position: absolute;">web design</a>
			<!-- Bullet Navigator -->
			<div data-u="navigator" class="jssorb106"
				style="position: absolute; bottom: 16px; right: 16px;"
				data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
				<div data-u="prototype" class="i" style="width: 12px; height: 12px;">
					<svg viewbox="0 0 16000 16000"
						style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                        <path class="b"
							d="M11400,13800H4600c-1320,0-2400-1080-2400-2400V4600c0-1320,1080-2400,2400-2400h6800 c1320,0,2400,1080,2400,2400v6800C13800,12720,12720,13800,11400,13800z"></path>
                    </svg>
				</div>
			</div>
			<!-- Arrow Navigator -->
			<div data-u="arrowleft" class="jssora051"
				style="width: 55px; height: 55px; top: 0px; left: 25px;"
				data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
				<svg viewbox="0 0 16000 16000"
					style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                    <polyline class="a"
						points="11040,1920 4960,8000 11040,14080 "></polyline>
                </svg>
			</div>
			<div data-u="arrowright" class="jssora051"
				style="width: 55px; height: 55px; top: 0px; right: 25px;"
				data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
				<svg viewbox="0 0 16000 16000"
					style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                    <polyline class="a"
						points="4960,1920 11040,8000 4960,14080 "></polyline>
                </svg>
			</div>
		</div>
	</div>
	<script type="text/javascript">jssor_1_slider_init();
    </script>
	<!-- #endregion Jssor Slider End -->
</body>
</html>
