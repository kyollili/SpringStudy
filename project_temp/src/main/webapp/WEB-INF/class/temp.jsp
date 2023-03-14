<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://taling.me/"> <a
		itemprop="sameAs" href="https://blog.naver.com/taling_me"></a> <a
		itemprop="sameAs"
		href="https://www.youtube.com/channel/UCuFmmpVLaNNFoy-cHqELl_A"></a> <a
		itemprop="sameAs"
		href="https://www.instagram.com/taling_official/?hl=ko"></a>
	</span>
	<!-- 네이버 사이트 연관 채널 End -->

	<!-- Google Tag Manager (noscript)- pc,mobile 공통 -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTJJTC6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!--<script>-->
	<!--    Sentry.init({ dsn: 'https://513eb48c93c14e49bbd91a99bada11dd@o140521.ingest.sentry.io/1552346' });-->
	<!--</script>-->
	<div id="wrap">
		<!-- header -->
		<header id="header" class="fixed">
			<div class="header_wrapper">
				<!-- logo -->
				<h1 class="logo">
					<a href="/"><span class="blind">탈잉</span></a>
				</h1>
				<!-- // logo -->
				<!-- gnb -->
				<div class="gnb">
					<a href="/" class="">홈HOME</a> <a href="/vod/list" class="">브오디VOD</a>
				</div>
				<!-- // gnb -->
				<!-- search_area -->
				<div class="search_area">
					<form class="" action="/Home/Search/" name="search">
						<fieldset>
							<legend class="blind">통합검색</legend>
							<input type="text" class="search_input" name="query"
								id="searchcss" autocomplete="off"
								placeholder="배우고 싶은 재능을 찾아보세요." value="">
							<button type="submit" class="btn_search"
								onclick="searchQuery2();">
								<span class="blind">검색</span>
							</button>
						</fieldset>
					</form>
				</div>
				<!-- // search_area -->
				<!-- nav_gnb -->
				<nav class="nav_gnb">
					<ul>
						<li><a href="/tutor/Register/Manual">튜터등록</a></li>
						<li><a href="/Account/LoginPage.php">로그인</a></li>
					</ul>
				</nav>
				<!-- // nav_gnb -->
			</div>
		</header>
		<!-- //header -->
		<link rel="image_src"
			href="//img.taling.me/Content/Uploads/Cover/9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg">
		<script>
        fbq('track', 'ViewContent', {
            content_type: 'product',
            content_ids: ['5547'],
            content_category: '백엔드'
        }, {eventID: 'df8dcb164e8a441e77d8d5defac1fbb50901c583c63387746ddc90397bbf791b'});
    </script>

		<!-- Enliple Tracker Start -->
		<!--모비온 - 상세페이지 스크립트 : 마케팅 효율 측정 [pc,mobile 공통]-->
		<script type="text/javascript">
        var ENP_VAR = {
            collect: {},
            conversion: { product: [] }
        };
        ENP_VAR.collect.productCode = '5547';
        ENP_VAR.collect.productName = 'IT 현직자가 알려주는 실전 JAVA ';
                ENP_VAR.collect.price = '660000';
                ENP_VAR.collect.dcPrice = '660000';
        ENP_VAR.collect.soldOut = 'N';
        ENP_VAR.collect.imageUrl = '//img.taling.me/Content/Uploads/Cover/9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg';
        // ENP_VAR.collect.secondImageUrl = '상품 이미지 URL(다중이미지 사용시 세팅)';
        // ENP_VAR.collect.thirdImageUrl = '상품 이미지 URL(다중이미지 사용시 세팅)';
        // ENP_VAR.collect.fourthImageUrl = '상품 이미지 URL(다중이미지 사용시 세팅)'
        ENP_VAR.collect.topCategory = '개발·테크';
        ENP_VAR.collect.firstSubCategory = '백엔드';
        // ENP_VAR.collect.secondSubCategory = '중분류';
        // ENP_VAR.collect.thirdSubCategory = '소분류';

        (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
        /* 상품수집 */
        enp('create', 'collect', 'taling', {device: 'W'});
        /* 장바구니 버튼 타겟팅 (이용하지 않는 경우 삭제) */
        //enp('create', 'cart', 'taling', { device: '//', btnSelector: '장바구니 버튼의 CSS Selector (document.querySelector 함수에 들어갈 수 있는 값)' });
        /* 찜 버튼 타겟팅 (이용하지 않는 경우 삭제) */
        enp('create', 'wish', 'taling', { device: 'W', btnSelector: '#wishBtn' });
    </script>
		<!-- Enliple Tracker End -->

		<!--gtag start-->
		<script>
        gtag('event', 'view_item', {
            "items": [
                {
                    "id": "5547",
                    "name": "IT 현직자가 알려주는 실전 JAVA ",
                    "brand": "P2P",
                    "category": "개발·테크",
                    "variant": "백엔드",
                    "price": 55000                }
            ]
        });
    </script>
		<!--gtag end-->
		<!--fb capi-->
		<script src="/fb_capi/FacebookConversionRequest.js"
			type="text/javascript"></script>
		<script>
        $(document).ready(function(){
            let capi = new FacebookConversionRequest();
            capi.setEventName('ViewContent');
            capi.setCustomData('5547', '백엔드','726000');
            capi.setEventData('df8dcb164e8a441e77d8d5defac1fbb50901c583c63387746ddc90397bbf791b','https://taling.me/Talent/Detail/5547');
            capi.execute();

            $(function(){
                let sc50 = false;
                let sc75 = false;
                $(window).scroll(function(){
                    var totalheight = $('body, html').prop('scrollHeight');
                    var scHeight = $(window).scrollTop();
                    var scPer = Math.round(scHeight/totalheight*100);
                    if(scPer>50&&!sc50){
                        capi.setEventName('ScrollTracking',50);
                        capi.setEventData('1a736f34ed0fb4f307799a101d2a115caa4b018a85ec94d58d15b7d410ff08d1st50','https://taling.me/Talent/Detail/5547');
                        capi.execute();
                        sc50 = true;
                    }
                    if(scPer>75&&!sc75){
                        capi.setEventName('ScrollTracking',75);
                        capi.setEventData('bfd109613700e475a3cbb903c41979ff5e8d2222088bbebda9afdb0549e85ddfst75','https://taling.me/Talent/Detail/5547');
                        capi.execute();
                        sc75 = true;
                    }
                });
            });
        });
    </script>
		<!--//fb capi-->
		<link rel="stylesheet"
			href="/Content/app3/css/jquery.mCustomScrollbar.css" media="all">
		<link rel="stylesheet" href="/Content/app3/css/swiper.min.css">
		<link rel="stylesheet" href="/Content/app3/css/aegrenner.css">
		<link rel="stylesheet"
			href="/Content/app3/css/talent/detail.css?ver=220110" media="all">
		<link rel="stylesheet"
			href="/Content/app3/css/talent/photo_review.css">
		<link rel="stylesheet"
			href="/Content/app3/css/talent/respond.css?ver=220110" media="all">

		<script src="/Scripts/app3/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="/Scripts/app3/swiper.min2.js"></script>
		<script src="/Scripts/app3/talent/detail.js?ver=220419"></script>
		<script src="/Scripts/app3/talent/detail_review.js?ver=220814"></script>

		<input type="hidden" id="tutorName" value="Kim YeongJun"> <input
			type="hidden" id="tutorImage"
			value="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_bddcc76e684fb40ab5733a8dd9cea0d8abc63374.jpg">
		<input type="hidden" id="Account_Id" value=""> <input
			type="hidden" id="Talent_Id" value="5547"> <input
			type="hidden" id="Owner_Id" value="70415">

		<!-- 라이브 숏컷  -->
		<!--// 라이브 숏컷 -->

		<!-- B2B 기업 제휴 랜딩 페이지 팝업 -->
		<style>
.B2BLandingPopup {
	display: none;
	z-index: 100;
	position: fixed;
	bottom: 70px;
	right: -75px;
	transform: translateX(-50%);
	height: 0;
	text-align: center;
}

.B2BLandingPopup.vodListPage {
	bottom: 150px;
}

.B2BLandingPopup .layer {
	cursor: pointer;
	position: relative;
	display: inline-block;
	width: auto;
	height: 55px;
	text-align: left;
}

.B2BLandingPopup .layer .banner_img {
	border-radius: 10px;
	box-shadow: 0px 4px 20px rgb(0 0 0/ 25%);
}

.B2BLandingPopup .layer .pixel_img {
	display: none;
}

.B2BLandingPopup .btn_close {
	position: absolute;
	top: -2px;
	right: 3px;
	width: 20px;
	height: 20px;
	background:
		url(//front-img.taling.me/Content/app3/img/icon/ic-multiply-black-24px@2x.png)
		no-repeat center/100% 100%;
}
</style>
		<div class="B2BLandingPopup " id="B2BLandingPopup"
			style="display: block;">
			<div class="layer" onclick="go_to_B2Bpage();">
				<img class="banner_img"
					src="https://front-img.taling.me/Content/app3/img/banner/B2BpopupBanner02_1.png">
				<img class="pixel_img" id="b2b_pixel_img"
					src="/Event/pixel.png?d=1_web_/Talent/Detail/5547_view">
			</div>
			<button type="button" onclick="layerClose_Week();" class="btn_close">
				<span class="blind">닫기</span>
			</button>
		</div>
		<script>
        open_os = "web";
        const link = location.pathname;
        // 클릭 작동
        function go_to_B2Bpage(){
            $("#b2b_pixel_img").attr("src", "/Event/pixel.png?d=1_"+open_os+"_"+link+"_click");
            location.href="/B2B/main";
        }
        // 주단위 닫기.
        function layerClose_Week()
        {
            $("#b2b_pixel_img").attr("src", "/Event/pixel.png?d=1_"+open_os+"_"+link+"_closeweek");
            $("#B2BLandingPopup").hide();

            let cookie_end_date = new Date();
            cookie_end_date.setDate(cookie_end_date.getDate() + 7);
            cookie_end_date.setHours(23, 59, 59, 999);
            $.cookie('B2B_LANDING_POPUP', '1', {expires:cookie_end_date, path:'/'}); // 일주일동안 쿠키 유지
        }
        // 로딩시 쿠키 여부에 따라 팝업 노출
        $(function(){
            if($.cookie('B2B_LANDING_POPUP') != '1'){
                $("#B2BLandingPopup").show();
                $("#b2b_pixel_img").attr("src", "/Event/pixel.png?d=1_"+open_os+"_"+link+"_view");
            }
        });

        jQuery.cookie = function (key, value, options) {

            // key and at least value given, set cookie...
            if (arguments.length > 1 && String(value) !== "[object Object]") {
                options = jQuery.extend({}, options);

                if (value === null || value === undefined) {
                    options.expires = -1;
                }

                if (typeof options.expires === 'number') {
                    var days = options.expires, t = options.expires = new Date();
                    t.setDate(t.getDate() + days);
                }

                value = String(value);

                return (document.cookie = [
                    encodeURIComponent(key), '=',
                    options.raw ? value : encodeURIComponent(value),
                    options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
                    options.path ? '; path=' + options.path : '',
                    options.domain ? '; domain=' + options.domain : '',
                    options.secure ? '; secure' : ''
                ].join(''));
            }

            // key and possibly options given, get cookie...
            options = value || {};
            var result, decode = options.raw ? function (s) { return s; } : decodeURIComponent;
            return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + '=([^;]*)').exec(document.cookie)) ? decode(result[1]) : null;
        };
    </script>

		<main id="wrap">
			<!-- gnb -->
			<div class="p2p_class_nav fixed">
				<ul>
					<li class=""><a href="javascript:;">튜터 소개</a></li>
					<li class=""><a href="javascript:;">클래스 소개</a></li>
					<li class="active"><a href="javascript:;">커리큘럼</a></li>
					<li><a href="javascript:;">리뷰</a></li>
				</ul>
			</div>
			<!--// gnb -->

			<div class="p2p_class_wrap">
				<div class="p2p_class_container">
					<!-- 수업명, 튜터이름, 별점 -->
					<section class="p2p_class_info">
						<!-- 오프라인, 온라인 라이브 수업 : 모든 정보 노출 -->
						<ul class="p_info_sum">
							<li>다회차</li>
							<li id="regionAll">강남</li>
							<li>최대 6명</li>
							<!-- 녹화영상, 전자책 수업 : 진행방식만 노출 -->
						</ul>
						<h1 class="p_title">IT 현직자가 알려주는 실전 JAVA</h1>

						<div class="p2p_tutor_info">
							<div class="tutor_img">
								<img
									src="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_bddcc76e684fb40ab5733a8dd9cea0d8abc63374.jpg"
									onerror="profileImgError(this, 1)" alt="">
							</div>
							<div class="short_info">
								<em class="t_nickname">Kim YeongJun 튜터</em> <span
									class="class_review"> <i class="star_img"> <img
										src="https://front-img.taling.me/Content/Images/class/icon_star_new.png"
										alt="">
								</i> <i class="grade_total">4.2<sapn>(2)</sapn></i>
								</span>
							</div>
							<!-- 이벤트 뱃지 -->
							<ul class="p_class_badge">
							</ul>
							<!--// 이벤트 뱃지 -->
						</div>
					</section>
					<!--// 수업명, 튜터이름, 별점 -->

					<!-- 수업 이미지 -->
					<section class="p2p_class_img">
						<!-- Swiper -->
						<div class="img_slied_area">
							<!-- gallery-top -->
							<div
								class="swiper-container gallery-top swiper-container-fade swiper-container-initialized swiper-container-horizontal swiper-container-rtl">
								<div class="swiper-wrapper" style="transition-duration: 0ms;">
									<div
										class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/28b5e7a2772a822926b85fbf578d5bcfd1a503eb.jpg&quot;); width: 575px; transition-duration: 0ms; opacity: 0.00173913; transform: translate3d(1px, 0px, 0px);"
										data-swiper-slide-index="3"></div>
									<div class="swiper-slide swiper-slide-active"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg&quot;); width: 575px; transition-duration: 0ms; opacity: 0.994783; transform: translate3d(578px, 0px, 0px);"
										data-swiper-slide-index="0"></div>
									<div class="swiper-slide swiper-slide-next"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/8296d27692aee6e79a3c3ee310696b6d68dd46fe.png&quot;); width: 575px; transition-duration: 0ms; opacity: 0; transform: translate3d(1155px, 0px, 0px);"
										data-swiper-slide-index="1"></div>
									<div class="swiper-slide"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/2af371348f46472d84cb1923d81cddaa18077a06.png&quot;); width: 575px; transition-duration: 0ms; opacity: 0; transform: translate3d(1732px, 0px, 0px);"
										data-swiper-slide-index="2"></div>
									<div class="swiper-slide swiper-slide-duplicate-prev"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/28b5e7a2772a822926b85fbf578d5bcfd1a503eb.jpg&quot;); width: 575px; transition-duration: 0ms; opacity: 0; transform: translate3d(2309px, 0px, 0px);"
										data-swiper-slide-index="3"></div>
									<div
										class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg&quot;); width: 575px; transition-duration: 0ms; opacity: 0; transform: translate3d(2886px, 0px, 0px);"
										data-swiper-slide-index="0"></div>
								</div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
							<!-- // gallery-top -->
							<!-- gallery-thumbs -->
							<div
								class="swiper-container gallery-thumbs swiper-container-initialized swiper-container-vertical swiper-container-free-mode swiper-container-thumbs">
								<div class="swiper-wrapper"
									style="transition-duration: 0ms; transform: translate3d(0px, -100px, 0px);">
									<div
										class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/28b5e7a2772a822926b85fbf578d5bcfd1a503eb.jpg&quot;); height: 90px; margin-bottom: 10px;"
										data-swiper-slide-index="3"></div>
									<div
										class="swiper-slide swiper-slide-visible swiper-slide-active swiper-slide-thumb-active"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg&quot;); height: 90px; margin-bottom: 10px;"
										data-swiper-slide-index="0"></div>
									<div
										class="swiper-slide swiper-slide-visible swiper-slide-next"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/8296d27692aee6e79a3c3ee310696b6d68dd46fe.png&quot;); height: 90px; margin-bottom: 10px;"
										data-swiper-slide-index="1"></div>
									<div class="swiper-slide swiper-slide-visible"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/2af371348f46472d84cb1923d81cddaa18077a06.png&quot;); height: 90px; margin-bottom: 10px;"
										data-swiper-slide-index="2"></div>
									<div
										class="swiper-slide swiper-slide-visible swiper-slide-duplicate-prev"
										style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/28b5e7a2772a822926b85fbf578d5bcfd1a503eb.jpg&quot;); height: 90px; margin-bottom: 10px;"
										data-swiper-slide-index="3"></div>
									<div
										class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active swiper-slide-thumb-active"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg&quot;); height: 90px; margin-bottom: 10px;"
										data-swiper-slide-index="0"></div>
								</div>
								<!-- swiper button -->
								<div class="swiper-button-prev" tabindex="0" role="button"
									aria-label="Previous slide"></div>
								<div class="swiper-button-next" tabindex="0" role="button"
									aria-label="Next slide"></div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
							<!-- // gallery-thumbs -->
						</div>
						<!--//swiper_wrapper-->
					</section>
					<!--//p2p_class_img-->
					<!--// 수업 이미지 -->
					<div class="detail_wrap">
						<!-- 수업전 숙지해주세요. -->
						<section class="p2p_class_notice">
							<div class="p_col_left">
								<p class="col_title">클래스 전 숙지해주세요!</p>
							</div>
							<div class="p_col_right">
								<div class="text_wrap">
									<p class="text_area">인터넷이 되는 스터디룸에서 강의하고자 합니다. 강의실 대여료는
										수업료에 포함됩니다.</p>
									<span class="badge_noti">튜터 공지</span>
								</div>
								<button class="btn_show" style="display: none;">
									<span class="more">더보기</span> <span class="less">접기</span>
								</button>
							</div>
							<!--//p2p_class_notice-->
						</section>
						<!--// 수업전 숙지해주세요. -->

						<!-- 클래스 요약 -->
						<!-- // 클래스 요약 -->

						<!-- 이런 분들이 들으면 좋아요. -->
						<section class="sec_common p2p_class_target">
							<div class="p_col_left">
								<p class="col_title">이런 분들이 들으면 좋아요.</p>
							</div>
							<!--//p_col_left-->
							<div class="p_col_right">
								<div class="text_wrap">
									<p class="text_area">
										※ 들으셔야 할 분 <br> - 자바만 봐도 울렁거리시는 분 <br> - 자바로 뭘 만들고
										싶은데 뭘 해야할지 모르시는 분<br> - 안드로이드 앱을 만들고 싶은데 자바를 모르시는 분 <br>
										- 어떻게 자바를 공부하실지 모르시는 분 <br> - 비전공자 출신으로 자바 공부하실 분 <br>
										<br> ※ 듣지 않아도 되실 분 <br> - 자바 프로젝트를 한번쯤 경험해 보신 분 <br>
										- 자바 책 10번은 봤다고 생각하시는 분 <br> - C나 C++은 쉽다고 생각하시는 분 <br>
										- 비전공자이지만 코딩이 체질이라 모든언어에 능통하신 분
									</p>
								</div>
								<button class="btn_show" style="display: none;">
									<span class="more">더보기</span> <span class="less">접기</span>
								</button>
							</div>
						</section>
						<!--// 이런 분들이 들으면 좋아요. -->

						<!-- 튜터님을 소개합니다. -->
						<section class="idx sec_common p2p_tutor_intro">
							<div class="p_col_left">
								<p class="col_title">튜터님을 소개합니다.</p>
							</div>
							<div class="p_col_right">
								<div class="tutor_info_profile">
									<div class="profile_img">
										<img
											src="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_bddcc76e684fb40ab5733a8dd9cea0d8abc63374.jpg"
											onerror="profileImgError(this, 1)" alt="">
									</div>
									<div class="profile_text">
										<p class="name">Kim YeongJun</p>
									</div>
								</div>
								<ul class="cert_list">
									<li>부경대학교 컴퓨터멀티미디어공학</li>


									<li class="com">CISA</li>
									<li class="com">OCP</li>
									<li class="com">SCJP</li>
									<li class="com">정보처리기사</li>
								</ul>
								<div class="text_wrap toggle">
									<p class="text_area">
										◎ 프로젝트 경력 <br> - 금융권 차세대 프로젝트 투입중<br> - 금융권
										인터넷뱅킹/스마트폰뱅킹 운영 <br> - 국내 최대 S통신사 차세대 경험 <br> -
										금융(은행, 카드, 저축은행) 차세대 프로젝트 다수 경험<br> <br> ◎ 이력 <br>
										- 3대 SI 대기업 현직자 <br> - Tmaxsoft 근무 경험<br> - 중소기업 연구소
										근무 경험<br> - 프리랜서 근무 경험<br> - 스타트업(벤처기업) 경험<br>
										- 병역특례 경험 <br> <br> ◎ 자기 소개 <br> 저는 현직자이며 언제나
										노력하는 개발자 푸우 튜터입니다. <br> 탈잉을 보니 다양한 경험을 가지신 훌륭한 튜터님들이 많이
										계신 걸로 보입니다. <br> 이런 훌륭하신 튜터님들중에서 저만의 장점을 알려드린다면 금융 프로젝트
										투입전 비전공자 및 Java를 모르는 신입사원에게 교육을 담당했던 사람이라고 말씀드리고 싶습니다. <br>
										그리고 실무 경력이 어마어마하게 길지만 아직 젊습니다. ^^;<br> 그리고 여러분들처럼 언제나
										공부하는 자세로 저번달에도 Go 야간수업을 10시까지<br> 열심히 들었습니다. 노력하는 사람이 더 잘
										가르킬 수 있습니다. <br> <br> ◎ 사용가능언어 : VB, C, C++, Java,
										Javascript, Python, Go, Android, Objective-C <br> ◎
										사용가능DB : Oracle, MS-SQL, MySQL, MongoDB<br>
									</p>
								</div>
								<button class="btn_show">
									<span class="more">더보기</span> <span class="less">접기</span>
								</button>
							</div>
						</section>
						<!--// 튜터님을 소개합니다. -->

						<!-- 어떤 수업인가요? -->
						<section class="idx sec_common p2p_class_intro">
							<div class="p_col_left">
								<p class="col_title">어떤 클래스 인가요?</p>
							</div>
							<!--//p_col_left-->
							<div class="p_col_right">
								<div class="text_wrap toggle">
									<p class="text_area">
										저의 수업은 실무에서 쓰는 군더더기 없는 내용을 가르쳐 드립니다. <br> 수업을 준비하기 위해서 다른
										튜터분들의 수업 내용을 보았을 때 제목은 거창하나 실제 업무에서 쓸 수 없는 정말 기초중에 기초인 내용만 훑고
										지나가는게 너무 안타까웠습니다. 실무 투입 전 Java를 전혀 모르는 사원 대리급에게 교육을 진행한 경험을
										바탕으로 하여 실무적인 내용을 중심으로 이해하기 쉽게 알려드립니다. <br> <br> ◎
										3시간 수업(50분 수업 + 10분 휴식 + 50분 수업 + 10분 휴식 + 1시간 수업)<br> ◎
										2주차부터는 전주에 배운 내용에 대한 복습<br> ◎ 이론만 있는 수업은 No! 1시간동안 실습을
										통해서 실전능력을 기릅니다. <br> <br> ※수강한 뒤 얻을 수 있는 것 (수업과 관련된
										내용)<br> - JAVA 웹 프로그래밍을 공부할 수 있겠어요. <br> - 간단한 자바
										프로그램은 짤 수 있어요. <br> - 무언가를 만들때 어디서부터 해야할지 알것 같아요. <br>
										- 안드로이드 앱 만들기위한 JAVA를 이해했어요. <br> - 자바 뿐만 아니라 다른 프로그래밍언어도
										비교해서 이해할 수 있어요. <br> <br> ※수강한 뒤 얻을 수 있는 것 (수업외 내용)<br>
										- 실무에선 어떤 기술을 쓰는지 알려드립니다. <br> - 자격증을 따야하나 말아야하나도 알려드립니다.
										<br> - 스타트업, 중견기업, 대기업, 프리랜서 경험도 들을 수 있어요. <br> <br>
										※자바 웹 프로그래밍/안드로이드 과정도 준비중입니다. <br> <br> <br>
										※수강생이 두명이상이어야만 하고 미만일 경우에는 차주로 연기됩니다. <br> <br> <br>
									</p>
								</div>
								<button class="btn_show">
									<span class="more">더보기</span> <span class="less">접기</span>
								</button>
							</div>
						</section>
						<!--// 어떤 수업인가요? -->

						<!-- 클래스 유의사항 -->
						<!-- // 클래스 유의사항 -->

						<!-- 수업은 이렇게 진행됩니다 -->
						<section class="idx sec_common p2p_class_curri">
							<div class="p_col_left">
								<p class="col_title">클래스는 이렇게 진행됩니다.</p>
							</div>
							<!--//p_col_left-->
							<div class="p_col_right">
								<div class="text_wrap toggle">
									<div class="text_area">
										<div class="multi_class_list">
											<strong class="curri_heading">1회차 커리큘럼</strong>
											<p class="curri_details">
												□ 이론 <br> - JDK 설치 및 Java용 IDE설치(Eclipse)<br> - 자바
												소개 <br> - 자바 특징, 자바 클래스 작성 <br> - 자바 기초 문법 <br>
												<br> □ 실습 <br> - 퀴즈 및 실습 <br> - 실무에선 뭘 쓰나요? <br>
												- 다음주 예고
											</p>
											<div class="curri_img"></div>
										</div>
										<div class="multi_class_list">
											<strong class="curri_heading">2회차 커리큘럼</strong>
											<p class="curri_details">
												□ 복습(1주차 복습)<br> <br> □ 이론 <br> - 클래스와 객체의 이해
												<br> - Overloading, Overriding<br> - 타입의 변환과 캐스팅 <br>
												<br> □ 실습 <br> - 퀴즈 및 실습 <br> - 실무에선 뭘 쓰나요? <br>
												- 다음주 예고
											</p>
											<div class="curri_img"></div>
										</div>
										<div class="multi_class_list">
											<strong class="curri_heading">3회차 커리큘럼</strong>
											<p class="curri_details">
												□ 복습 <br> - 복습(2주차 복습)<br> <br> □ 이론<br>
												- JDK 필수 사용 클래스 <br> - 예외처리 <br> - 스레드 <br> -
												스트림과 입출력 <br> <br> <br> □ 실습<br> - 퀴즈 및
												실습 <br> - 실무에선 뭘 쓰나요? <br> - 다음주 예고
											</p>
											<div class="curri_img"></div>
										</div>
										<div class="multi_class_list">
											<strong class="curri_heading">4회차 커리큘럼</strong>
											<p class="curri_details">
												□ 복습 <br> - 복습(3주차 복습)<br> <br> □ 실습 <br>
												- SpringBoot와 MySQL을 이용한 로그인 페이지 만들기<br> <br>
											</p>
											<div class="curri_img"></div>
										</div>
									</div>
								</div>
								<button class="btn_show">
									<span class="more">더보기</span> <span class="less">접기</span>
								</button>
							</div>
						</section>
						<!--//수업은 이렇게 진행됩니다 -->

						<!-- 관련 영상 보고가세요 -->
						<!--//관련 영상 보고가세요 -->

						<!-- 수강생 리뷰 -->
						<section class="idx sec_common p2p_class_cmt" id="review">
							<div class="p_col_left">
								<p class="col_title">실제 수강생의 리뷰입니다.</p>
							</div>
							<!--//p_col_left-->
							<div class="p_col_right">
								<div class="review_sum">
									<ul class="review_list">
										<li>커리큘럼<span class="avg">5.0</span></li>
										<li>전달력<span class="avg">4.0</span></li>
										<li>시간준수<span class="avg">4.5</span></li>
										<li>준비성<span class="avg">4.0</span></li>
										<li>친절도<span class="avg">3.5</span></li>
									</ul>
								</div>
								<button type="button" class="btn_cmt"
									onclick="writeReview(5547,'newReview',0,1);">리뷰 작성하기</button>
								<!-- 댓글 영역 -->
								<div id="innerReviewDiv">
									<ul class="cmt_wrap">
										<li class="list"><div class="tutee_info">
												<span class="img"><img
													src="//img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg"
													onerror="profileImgError(this,0)" alt=""></span>
												<div class="tutee">
													<span class="name">yunjenna</span>
													<div class="date">
														<p>2019-04-13 17:51:07</p>
													</div>
												</div>
											</div>
											<div class="cmt">
												<p>잘 들었습니다!</p>
											</div>
											<div class="btn_box">
												<button class="btn_like" type="button"
													onclick="ReviewLikes(19559,5547,this)">0</button>
												<span class="reply">0</span>
											</div>
											<div class="reply_box" id="reply_box19559">
												<form action="" name="re-insert" type="19559">
													<div class="reply_inp">
														<div class="text_inp">
															<textarea name="ReplyContent" placeholder="답글을 작성해 주세요."
																id="ReplyContent19559"></textarea>
														</div>
														<div class="submit_box">
															<button type="submit" class="btn_submit">등록</button>
														</div>
													</div>
												</form>
											</div></li>
										<li class="list"><div class="tutee_info">
												<span class="img"><img
													src="//front-img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg"
													onerror="profileImgError(this,0)" alt=""></span>
												<div class="tutee">
													<span class="name">익명</span>
													<div class="date">
														<p>2018-10-15 18:17:24</p>
													</div>
												</div>
											</div>
											<div class="cmt">
												<p>강사님이 최선을 다해서 친절하게 알려주셨습니다. 자바 기초부터 시작해서 실제로 사용하고 있는
													프로그램과 정보도 알려주시며 인생상담까지 친절하게 해주셨습니다. 돈이 아깝지 않았습니다. 꼭 들으십시오.
													강력추천합니다.</p>
											</div>
											<div class="btn_box">
												<button class="btn_like" type="button"
													onclick="ReviewLikes(8957,5547,this)">0</button>
												<span class="reply">1</span>
											</div>
											<div class="reply_box" id="reply_box8957">
												<form action="" name="re-insert" type="8957">
													<div class="reply_inp">
														<div class="text_inp">
															<textarea name="ReplyContent" placeholder="답글을 작성해 주세요."
																id="ReplyContent8957"></textarea>
														</div>
														<div class="submit_box">
															<button type="submit" class="btn_submit">등록</button>
														</div>
													</div>
												</form>
											</div>
											<ul class="re">
												<li class="tutor_re"><div class="user_info">
														<span class="img"><img
															src="//front-img.taling.me/Content/Images/tutor_no_img.png"
															onerror="profileImgError(this, 1)" alt=""></span>
														<div class="text">
															<span class="name">Kim YeongJun</span>
															<p class="date">2018-10-01 13:52:41</p>
														</div>
													</div>
													<div class="cont cont_line cmt" id="content-box973">
														<p>네. 감사합니다. 언제든지 필요한 내용 있으시면 문의부탁드립니다.</p>
													</div></li>
											</ul></li>
									</ul>
								</div>
								<!--// 댓글영역 -->
								<!-- 수강생 리뷰 페이지네이션 -->
								<div id="innerPageDiv" class="pagination">
									<a class="navi left" onclick="inReviewDiv(5547,0)"><span
										class="blind">왼쪽</span></a><a class="active"
										onclick="inReviewDiv(5547, 1)">1</a><a class="navi right"
										onclick="inReviewDiv(5547,1)"><span class="blind">오른쪽</span></a>
								</div>
								<!--// 수강생 리뷰 페이지네이션 -->
							</div>
						</section>
						<!--//수강생 리뷰 -->
					</div>
					<!--//detail_wrap-->
				</div>
				<!--//p2p_class_container-->

				<!-- pc 수업 신청 부분 -->
				<aside class="sticky_area fixed">
					<div class="sticky_navi">
						<h2>클래스 일정</h2>
						<ul
							class="schedule_list mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
							style="overflow: visible;">
							<div id="mCSB_1"
								class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
								style="max-height: 236px;" tabindex="0">
								<div id="mCSB_1_container"
									class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
									style="position: relative; top: 0; left: 0;" dir="ltr">
									<li>
										<p class="c_schedule">
											협의 후 날짜, 시간 결정 <span> </span>
										</p> <!--다회차 수업일 경우--> <span class="c_place">협의 후 결정</span> <b
										class="c_location">강남</b>
									</li>
								</div>
							</div>
							<div id="mCSB_1_scrollbar_vertical"
								class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
								style="display: none;">
								<div class="mCSB_draggerContainer">
									<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
										style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
										<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
									</div>
									<div class="mCSB_draggerRail"></div>
								</div>
							</div>
						</ul>
						<p class="price_info">
							<span class="per">55,000원 <span> / 시간</span>
							</span> <span class="total"> <b>660,000원 /</b> <span class="time">총
									4회 12시간</span>
							</span>
						</p>
						<!-- banner_coupon_area -->
						<div class="banner_coupon_area" style="display: none;">
							<div class="banner_coupon">
								<h2 class="banner_name"></h2>
								<button class="btn_coupon" type="button"
									onclick="loginConfirm();">쿠폰다운</button>
							</div>
						</div>
						<!-- // banner_coupon_area -->
						<!-- banner_coupon_list -->
						<div class="banner_coupon_list layer_box" style="bottom: 199px;">
							<h2 class="layer_title">다운로드 가능 쿠폰</h2>
							<div
								class="coupon_list mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar"
								style="position: relative; overflow: visible;">
								<div id="mCSB_2"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									tabindex="0" style="max-height: 357px;">
									<div id="mCSB_2_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<ul class="coupon_items"></ul>
									</div>
								</div>
								<div id="mCSB_2_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
							<button type="button" class="btn_close"
								onclick="closeCouponPop();">
								<span class="blind">닫기</span>
							</button>
						</div>
						<!-- // banner_coupon_list -->
						<ul class="btn_area">
							<li class="wish"><a href="/Account/LoginPage.php"
								onclick="alert('로그인이 필요합니다')"><span class="blind">찜하기</span></a>
							</li>
							<li class="apply"><a onclick="alert('로그인이 필요합니다');"
								href="/Account/LoginPage.php">클래스 신청하기</a></li>
						</ul>
						<ul class="btn_area">
							<!-- 실시간톡 -->
							<li class="wish"
								style="width: 100%; height: 48px; margin-top: 10px; margin-right: 0;">
								<button
									onclick="alert('로그인이 필요합니다'); location.href='/Account/LoginPage.php'"
									style="background: url(https://front-img.taling.me/Content/app3/img/icon/icon_liveChat@2x.png) #fff no-repeat 17px center/18px; background-position: 15px center;">튜터에게
									문의하기</button>
							</li>
							<!--// 실시간톡 -->
						</ul>
					</div>

				</aside>
				<!--// pc 수업 신청 부분 끝-->

				<!-- 태블릿 수업 신청 부분-->
				<div class="section_fixed_bottom" style="">
					<div class="container">
						<div class="schedule_list_pop_up">
							<h2>클래스 일정</h2>
							<div
								class="schedule_list mCustomScrollbar _mCS_3 mCS-autoHide mCS_no_scrollbar"
								style="overflow: visible;">
								<div id="mCSB_3"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									tabindex="0" style="max-height: 236px;">
									<div id="mCSB_3_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">

										<li>
											<p class="c_schedule">
												협의 후 날짜, 시간 결정 <span> </span>
											</p> <!--다회차 수업일 경우--> <span class="c_place">협의 후 결정</span> <b
											class="c_location">강남</b>
										</li>
									</div>
								</div>
								<div id="mCSB_3_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_3_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="fixed_navi">
							<div class="first_class">
								<p class="dt">협의 후 날짜, 시간 결정</p>
								<p class="pl">강남</p>
								<span class="detailed_location">협의 후 결정</span>
								<button class="btn_schedule" type="button">
									<span class="blind">더보기</span>
								</button>
							</div>
							<p class="price_info">
								<span class="per">55,000원 <span> / 시간</span>
								</span> <span class="total"> <b>660,000원 /</b> <span
									class="time">총 4회 12시간</span>
								</span>
							</p>
							<ul class="btn_area">
								<li class="wish"><a href="/Account/LoginPage.php"
									onclick="alert('로그인이 필요합니다')"><span class="blind">찜하기</span></a>
								</li>
								<li class="apply"><a onclick="alert('로그인이 필요합니다');"
									href="/Account/LoginPage.php">클래스 신청하기</a></li>
							</ul>

						</div>
					</div>
				</div>
				<!--//section_fixed_bottom-->
				<!--// 태블릿 수업 신청 부분 끝-->
			</div>
			<!--//p2p_class_wrap-->
			<!-- banner_coupon_area -->
			<div class="banner_coupon_area banner_fixed_bottom"
				style="display: none; bottom: 131px;">
				<div class="banner_coupon">
					<h2 class="banner_name"></h2>
					<button class="btn_coupon" type="button" onclick="loginConfirm();">쿠폰다운</button>
				</div>
			</div>
			<!-- // banner_coupon_area -->
			<!-- banner_coupon_list -->
			<div class="banner_coupon_list layer_box" style="bottom: 199px;">
				<h2 class="layer_title">다운로드 가능 쿠폰</h2>
				<div
					class="coupon_list mCustomScrollbar _mCS_4 mCS-autoHide mCS_no_scrollbar"
					style="position: relative; overflow: visible;">
					<div id="mCSB_4"
						class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
						tabindex="0" style="max-height: 357px;">
						<div id="mCSB_4_container"
							class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
							style="position: relative; top: 0; left: 0;" dir="ltr">
							<ul class="coupon_items"></ul>
						</div>
					</div>
					<div id="mCSB_4_scrollbar_vertical"
						class="mCSB_scrollTools mCSB_4_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
						style="display: none;">
						<div class="mCSB_draggerContainer">
							<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
								style="position: absolute; min-height: 50px; top: 0px;">
								<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
							</div>
							<div class="mCSB_draggerRail"></div>
						</div>
					</div>
				</div>
				<button type="button" class="btn_close" onclick="closeCouponPop();">
					<span class="blind">닫기</span>
				</button>
			</div>
			<!-- // banner_coupon_list -->
			<!-- 태블릿 앱설치 유도 배너 -->
			<div class="banner_app wide">
				<div class="banner_container">
					<ul class="logo_app">
						<li><img
							src="https://front-img.taling.me/Content/app3/images/p2p_class/p2p_ico_logo_app.png"
							alt="언제 어디서나 탈잉하기!"></li>
						<li>언제 어디서나 탈잉하기</li>
					</ul>
					<ul class="ico_apps">
						<li><a
							href="https://play.google.com/store/apps/details?id=com.taling">
								<img
								src="https://front-img.taling.me/Content/app3/images/p2p_class/p2o_ico_aos.png"
								alt="구글 플레이스토어로 이동합니다.">
						</a></li>
						<li><a
							href="https://itunes.apple.com/kr/app/탈잉-taling/id1153218962?l=en&amp;mt=8"
							target="_blank"> <img
								src="https://front-img.taling.me/Content/app3/images/p2p_class/p2p_ico_ios.png"
								alt="앱스토어로 이동합니다.">
						</a></li>
					</ul>
				</div>
			</div>
			<!--// 태블릿 앱설치 유도 배너 -->

			<!-- alert 디자인 팝업 -->
			<div id="alreadyPopup" class="modal_popup_list"
				style="display: none;">
				<div class="pop_alert_msg">
					<h3>앗!</h3>
					<p>이미 작성하신 리뷰가 있어요.</p>
					<button type="button" class="btn_close">확인</button>
				</div>
			</div>
			<div id="deletePopup" class="modal_popup_list" style="display: none;">
				<div class="pop_alert_msg">
					<h3>정말 삭제하시겠어요?</h3>
					<p>리뷰를 삭제하시면, 해당 수업에 새로운 리뷰를 작성하실 수 없어요.</p>
					<div class="btn_area">
						<button type="button" class="btn_review_del"
							onclick="delReview(5547)">리뷰 삭제</button>
						<button type="button" class="btn_close cancle">취소</button>
					</div>
				</div>
			</div>
			<div id="donotPopup" class="modal_popup_list" style="display: none;">
				<div class="pop_alert_msg">
					<h3>앗!</h3>
					<p>최초 작성일로부터 60일이 경과하여 리뷰를 수정할 수 없어요.</p>
					<button type="button" class="btn_close">확인</button>
				</div>
			</div>
			<!-- // alert 디자인 팝업 -->
		</main>
		<script>
    // 태블릿 일정
    var classList =  $('.sticky_navi .schedule_list').html();
    var classSchedule = $('.sticky_navi li:eq(0) .c_schedule').text();
    var classLocation = $('.sticky_navi li:eq(0) .c_place').text();
    $('.schedule_list_pop_up .schedule_list').append(classList);
    $('.fixed_navi .dt').text(classSchedule);
    $('.fixed_navi .detailed_location').text(classLocation);

        $('#regionAll').html(' 강남');

        inReviewDiv('5547', 0);

    // 위시 추가(찜하기)
    $(document).on('click', '#wishBtn', function() {
        var btn = $(this);
        $.post('/Talent/AddWishList/5547', {}, function(res) {
            if (res=='0000') {
                btn.attr('id', 'btn-remove-wishlist').addClass('on');
                alert('찜에 등록 되었습니다');
                fbq('init', '666003960220481');
                fbq('track', 'AddToWishlist', {
                    currency: 'KRW',
                    value: 660000,
                    content_type: 'product',
                    content_ids: ['5547'],
                    content_category: '백엔드'
                },{eventID: 'c1c48a66fe9ab659d5d4ea9b4c54cfd15bd1d3a3e42516195e93f86c81c6eff5'});
            } else {
                alert('찜에서 등록 중 오류가 발생했습니다');
            }
        });
    });

    // 위시 삭제
    $(document).on('click', '#btn-remove-wishlist', function() {
        var btn = $(this);
        $.post('/Talent/RemoveWishList/5547', {}, function(res) {
            if (res=='0000') {
                btn.attr('id', 'wishBtn').removeClass('on');
                $("#wishsrc").attr("src","https://front-img.taling.me/Content/Images/class/icon_btn_wish.png");
                alert('찜에서 삭제 되었습니다');
            } else {
                alert('찜에서 삭제 중 오류가 발생했습니다');
            }
        });
    });
</script>
		<!-- footer -->
		<footer>
			<div class="container">
				<h2 class="blind">탈잉 서비스 소개 및 약관</h2>
				<!-- f_top -->
				<div class="f_top">
					<ul class="f_nav">
						<li class="depth1">
							<p class="tit">COMPANY</p>
							<ul class="depth2">
								<li><a
									href="https://www.notion.so/talingme/2d3d41bfc10a4dd698d1f2255d474239"
									target="_blank">회사 소개</a></li>
								<li><a href="http://blog.naver.com/taling_me"
									target="_blank">블로그</a></li>
								<li><a
									href="https://www.notion.so/7e0d3c0647134f37a5cb875cac8f49a6"
									target="_blank">언론보도</a></li>
							</ul>
						</li>
						<li class="depth1">
							<p class="tit">POLICIES</p>
							<ul class="depth2">
								<li><a href="/Support/Rule">이용약관</a></li>
								<li><a href="/Support/Privacy"><b
										style="text-decoration: underline">개인정보처리방침</b></a></li>
							</ul>
						</li>
						<li class="depth1">
							<p class="tit">SUPPORT</p>
							<ul class="depth2">
								<li><a href="/Support/FAQ">FAQ</a></li>
								<li><a href="/Support/Center/">탈잉센터</a></li>
							</ul>
						</li>
						<li class="depth1 taling_biz">
							<p class="tit">B2B</p>
							<ul class="depth2">
								<li><a href="/B2B/main">기업교육</a></li>
							</ul>
						</li>
						<li class="depth1 taling_cs">
							<p class="tit">TALING CENTER</p>
							<ul class="depth2">
								<li class="cs" id="custom-button-trigger"
									style="color: #ff005a; cursor: pointer;">탈잉에게 문의하기</li>
								<li>
									<p>운영시간</p>
									<p>평일 10:00 ~ 17:00 점심 13:00 ~14:00</p>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div id="custom-button-1"></div>
				<!-- //f_top -->
				<!-- //f_bottom  -->
				<div class="f_bottom">
					<div class="f_info">
						<p>상호 : (주)탈잉 | 대표자명 : 김윤환 | 사업자등록번호 : 767-88-00630</p>
						<p>주소 : 서울특별시 성동구 성수이로22길 37, 서울창업허브 성수 304A (성수동 아크벨리)</p>
						<p>
							통신판매업 신고번호 : 2022-서울성동-02377 | <a href="tel:1877-1233">전화번호 :
								1877-1233&nbsp;</a> <a href="mailto:help@taling.me">|&nbsp;메일주소
								: help@taling.me</a>
						</p>
						<p>(주)탈잉은 통신판매중개자(플랫폼사업자)이며 통신판매의 당사자가 아닙니다. 따라서 (주)탈잉은 튜터가
							등록한 상품• 클래스정보 및 거래에 관한 의무와 책임을 구매자에게 지지 않습니다. 한편 (주)탈잉에 튜터로 등록,
							중개 판매한 클래스는 튜터가 중개거래 서비스를 받은 소비자에게 의무와 책임을 전적으로 부담하여야 합니다.</p>
						<p>Copyright ⓒ2020 taling inc, ltd. All rights reserved</p>

					</div>
					<ul class="f_sns">
						<li><a href="https://www.facebook.com/taling.me"
							target="_blank"><img
								src="https://front-img.taling.me/Content/app3/images/sns01.png"
								alt="facebook"></a></li>
						<li><a href="https://www.instagram.com/taling_official/"
							target="_blank"><img
								src="https://front-img.taling.me/Content/app3/images/sns02.png"
								alt="instagram"></a></li>
						<li><a
							href="https://www.youtube.com/channel/UCuFmmpVLaNNFoy-cHqELl_A"
							target="_blank"><img
								src="https://front-img.taling.me/Content/app3/images/sns03.png"
								alt="youtube"></a></li>
						<li><a href="https://post.naver.com/taling_me"
							target="_blank"><img
								src="https://front-img.taling.me/Content/app3/images/sns04.png"
								alt="naver"></a></li>
					</ul>
				</div>
				<!-- //f_bottom -->
			</div>
		</footer>

		<!-- Channel Plugin Scripts -->
		<script>
    var scrollTop=0;
    $('#custom-button-trigger, .cs').click(function(){
        scrollTop= $(window).scrollTop();
        $('#custom-button-1').click();
    });
    (function() {
        var w = window;
        if (w.ChannelIO) {
            return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
        }
        var d = window.document;
        var ch = function() {
            ch.c(arguments);
        };
        ch.q = [];
        ch.c = function(args) {
            ch.q.push(args);
        };
        w.ChannelIO = ch;
        function l() {
            if (w.ChannelIOInitialized) {
                return;
            }
            w.ChannelIOInitialized = true;
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
            s.charset = 'UTF-8';
            var x = document.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        }
        if (document.readyState === 'complete') {
            l();
        } else if (window.attachEvent) {
            window.attachEvent('onload', l);
        } else {
            window.addEventListener('DOMContentLoaded', l, false);
            window.addEventListener('load', l, false);
        }
    })();
    ChannelIO('boot', {
        "pluginKey": "8fc98895-06a5-402d-8740-1cb9261ebc91",
        "customLauncherSelector": "#custom-button-1",
        "hideDefaultLauncher": true,
            });
    ChannelIO('onHide', function() {
        $(window).scrollTop(scrollTop);
    });
</script>
		<!-- End Channel Plugin -->

		<!-- Enliple Tracker Start -->
		<!--모비온 - 상세페이지 스크립트 : 마케팅 효율 측정 [pc,mobile 공통]-->
		<script type="text/javascript">
    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'taling', {device: 'W'});
    enp('send', 'common', 'taling');
</script>
		<!-- Enliple Tracker End -->

		<!-- //footer -->
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
		<script>
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('a51b01dc9ea662d0ef7ed2c6242a6946');
    </script>

		<script>
        function shareFacebook() {
            FB.ui(
                {
                    method: 'share',
                    href: 'https://taling.me/Talent/Detail/5547'
                }, function (response) { });
        }

        function shareKakaoTalk() {
            Kakao.Link.sendTalkLink({
                label: '탈잉에서 "IT 현직자가 알려주는 실전 JAVA "을 확인해보세요 https://taling.me/Talent/Detail/5547',
                image: {
                    src: 'https://img.taling.me/Content/Uploads/Cover/s_9152442a3c2cee7206a2d3f6b95becccb9fa8eca.jpeg',
                    width: 420,
                    height: 250
                },
                webButton: {
                    text: '잉여 탈출하러 가기',
                    url: 'https://taling.me/Talent/Detail/5547'
                }
            });
        }
    </script>

		<script type="text/javascript">
        (function(w, d, a){
            w.__beusablerumclient__ = {
                load : function(src){
                    var b = d.createElement("script");
                    b.src = src; b.async=true; b.type = "text/javascript";
                    d.getElementsByTagName("head")[0].appendChild(b);
                }
            };w.__beusablerumclient__.load(a);
        })(window, document, "//rum.beusable.net/script/b200424e153207u198/2401e902db");
    </script>

		<script type="text/javascript">
        <!-- Criteo 상품 태그 -->
        window.criteo_q = window.criteo_q || [];
        var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
                window.criteo_q.push(
            {event: "setAccount", account: 41514},
            {event: "setEmail", email: ""},
            {event: "setZipcode", zipcode: ""},
            {event: "setSiteType", type: deviceType},
            {event: "viewItem", item: "5547"}
        );
        <!-- END Criteo 상품 태그 -->
    </script>
		<script>
        // 배너 쿠폰 개수 확인
        let couponCnt;

        // 배너 쿠폰 데이터 가져오기
        $(document).ready(function(){
            bannerCoupon();
        });

        // 로그인 여부 확인
        function loginConfirm() {
            if (confirm('로그인이 필요합니다')) location.href = '/Account/LoginPage.php';
        }

        // 배너 쿠폰 리스트 노출
        function couponPop() {
            $('.banner_coupon_list').addClass('db');
        }
        function closeCouponPop() {
            $('.banner_coupon_list').removeClass('db');
        }

        // 배너 쿠폰 데이터 호출
        function bannerCoupon() {

            const couponType = 'talent';
            const talentId = '5547';
            const accountId = '';

            const couponListParam = {
                couponType: couponType,
                id: talentId,
            };

            $.ajax({
                type: 'GET',
                url: '/api3/coupon/downloadableCouponList.php',
                data: couponListParam,
                success: function (data) {
                    const obj = JSON.parse(data);
                    if (!!obj && obj.result === 'success') {
                        const banner = obj.data.headInfo;
                        const couponList = obj.data.couponList;
                        if(couponList != null) couponCnt = couponList.length;

                        // 배너 쿠폰
                        let bannerCouponHtml = '';
                        let bannerStatus = '';
                        let bannerBtn = '쿠폰다운';
                        let bannerClick = 'loginConfirm();';

                        if (!!accountId && couponCnt == 1) { // 다운로드 가능한 쿠폰이 한 개일 때
                            bannerClick = 'bannerCouponDown('+talentId + ',' + couponList[0].id +');'
                        }
                        if (banner['status'] == 'ALREADY') { // 사용자가 쿠폰을 다운로드 했으며, 더이상 다운로드 가능한 쿠폰이 없을 때
                            bannerStatus = ' complete';
                            bannerBtn = '다운완료';
                            bannerClick = '';
                        } else if(banner['status'] == 'NONE' || banner['status'] == 'SOLDOUT') { // 쿠폰 미존재 or 관리자에서 비노출 or 다운로드 유효기간 만료
                            $('.banner_coupon_area').hide();
                        }

                        bannerCouponHtml += '<div class="banner_coupon'+ bannerStatus + '">';
                        bannerCouponHtml +=   '<h2 class="banner_name">'+ banner['name'] +'</h2>';
                        bannerCouponHtml +=   '<button class="btn_coupon" type="button" onclick="'+ bannerClick +'">'+ bannerBtn +'</button>';
                        bannerCouponHtml += '</div>';
                        $('.banner_coupon_area').empty(); // 쿠폰 다운 후 갱신을 위해
                        $('.banner_coupon_area').append(bannerCouponHtml);

                        // 배너 쿠폰 리스트
                        let couponListHtml = '';

                        for (let i=0; i<couponCnt; i++) {
                            if (couponList[i].downloadYn == 'Y') {
                                couponListHtml += '<li class="list down_complete">';
                            } else {
                                couponListHtml += '<li class="list" role="button" onclick="bannerCouponDown('+ talentId + ',' + couponList[i].id +');">';
                            }
                            couponListHtml +=   '<p class="coupon_price">'+ couponList[i].price +'</p>';
                            couponListHtml +=   '<p class="coupon_name">'+ couponList[i].name +'</p>';
                            couponListHtml +=   '<p class="coupon_desc">'+ couponList[i].priceDescription +'</p>';
                            couponListHtml +=   '<p class="coupon_due">'+ couponList[i].validDuration +'</p>';
                            couponListHtml += '</li>';
                        }
                        $('.banner_coupon_list ul.coupon_items').empty();
                        $('.banner_coupon_list ul.coupon_items').append(couponListHtml);

                    } else {
                        return false;
                    }
                }
            });
        }

        // 배너 쿠폰 다운로드
        let isRun = false;
        function bannerCouponDown(talentId, couponId) {

            // 중복 요청 막기
            if (isRun == true) return;
            isRun = true;

            const couponListParam = {
                couponType: 'talent',
                id: talentId,
                couponId: couponId
            };

            $.ajax({
                type: 'POST',
                url: '/api3/coupon/couponDownload.php',
                data: couponListParam,
                success: function (data) {
                    const obj = JSON.parse(data);
                    if (!!obj && obj.result === 'success') {
                        isRun = false;
                        alert(obj.reason);
                        bannerCoupon();
                    } else {
                        return false;
                    }
                }
            });
        }
    </script>


	</div>
	<div id="criteo-tags-div" style="display: none;"></div>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","666003960220481");fbq("set","agent","tmgoogletagmanager","666003960220481");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=666003960220481&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="">_linkedin_partner_id="2781620";window._linkedin_data_partner_ids=window._linkedin_data_partner_ids||[];window._linkedin_data_partner_ids.push(_linkedin_partner_id);</script>
	<script type="text/javascript" id="">(function(){var b=document.getElementsByTagName("script")[0],a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src="https://snap.licdn.com/li.lms-analytics/insight.min.js";b.parentNode.insertBefore(a,b)})();</script>
	<noscript>
		<img height="1" width="1" style="display: none;" alt=""
			src="https://px.ads.linkedin.com/collect/?pid=2781620&amp;fmt=gif">
	</noscript>
	<script type="text/javascript" id="">!function(d,e,f,a,b,c){d.twq||(a=d.twq=function(){a.exe?a.exe.apply(a,arguments):a.queue.push(arguments)},a.version="1.1",a.queue=[],b=e.createElement(f),b.async=!0,b.src="//static.ads-twitter.com/uwt.js",c=e.getElementsByTagName(f)[0],c.parentNode.insertBefore(b,c))}(window,document,"script");twq("init","o614t");twq("track","PageView");</script>

	<script type="text/javascript" id="">!function(d,g,e){d.TiktokAnalyticsObject=e;var a=d[e]=d[e]||[];a.methods="page track identify instances debug on off once ready alias group enableCookie disableCookie".split(" ");a.setAndDefer=function(b,c){b[c]=function(){b.push([c].concat(Array.prototype.slice.call(arguments,0)))}};for(d=0;d<a.methods.length;d++)a.setAndDefer(a,a.methods[d]);a.instance=function(b){b=a._i[b]||[];for(var c=0;c<a.methods.length;c++)a.setAndDefer(b,a.methods[c]);return b};a.load=function(b,c){var f="https://analytics.tiktok.com/i18n/pixel/events.js";
a._i=a._i||{};a._i[b]=[];a._i[b]._u=f;a._t=a._t||{};a._t[b]=+new Date;a._o=a._o||{};a._o[b]=c||{};c=document.createElement("script");c.type="text/javascript";c.async=!0;c.src=f+"?sdkid\x3d"+b+"\x26lib\x3d"+e;b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(c,b)};a.load("C4QT7T7M5GFN4SM6UOU0");a.page()}(window,document,"ttq");</script>

	<script type="text/javascript" id="">!function(d,g,e){d.TiktokAnalyticsObject=e;var a=d[e]=d[e]||[];a.methods="page track identify instances debug on off once ready alias group enableCookie disableCookie".split(" ");a.setAndDefer=function(b,c){b[c]=function(){b.push([c].concat(Array.prototype.slice.call(arguments,0)))}};for(d=0;d<a.methods.length;d++)a.setAndDefer(a,a.methods[d]);a.instance=function(b){b=a._i[b]||[];for(var c=0;c<a.methods.length;c++)a.setAndDefer(b,a.methods[c]);return b};a.load=function(b,c){var f="https://analytics.tiktok.com/i18n/pixel/events.js";
a._i=a._i||{};a._i[b]=[];a._i[b]._u=f;a._t=a._t||{};a._t[b]=+new Date;a._o=a._o||{};a._o[b]=c||{};c=document.createElement("script");c.type="text/javascript";c.async=!0;c.src=f+"?sdkid\x3d"+b+"\x26lib\x3d"+e;b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(c,b)};a.load("C4QT7T7M5GFN4SM6UOU0");a.page()}(window,document,"ttq");</script>

	<script type="text/javascript" id="">!function(d,g,e){d.TiktokAnalyticsObject=e;var a=d[e]=d[e]||[];a.methods="page track identify instances debug on off once ready alias group enableCookie disableCookie".split(" ");a.setAndDefer=function(b,c){b[c]=function(){b.push([c].concat(Array.prototype.slice.call(arguments,0)))}};for(d=0;d<a.methods.length;d++)a.setAndDefer(a,a.methods[d]);a.instance=function(b){b=a._i[b]||[];for(var c=0;c<a.methods.length;c++)a.setAndDefer(b,a.methods[c]);return b};a.load=function(b,c){var f="https://analytics.tiktok.com/i18n/pixel/events.js";
a._i=a._i||{};a._i[b]=[];a._i[b]._u=f;a._t=a._t||{};a._t[b]=+new Date;a._o=a._o||{};a._o[b]=c||{};c=document.createElement("script");c.type="text/javascript";c.async=!0;c.src=f+"?sdkid\x3d"+b+"\x26lib\x3d"+e;b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(c,b)};a.load("C51D6FALQH64DC0FLQE0");a.page()}(window,document,"ttq");</script>

	<script type="text/javascript" id=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-876466920"></script>
	<script type="text/javascript" id="">+function(c,g,h,k,a){c.appboy={};c.appboyQueue=[];a="DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.setAvatarImageUrl User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent display display.automaticallyShowNewInAppMessages display.destroyFeed display.hideContentCards display.showContentCards display.showFeed display.showInAppMessage display.toggleContentCards display.toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushGranted isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession registerAppboyPushMessages removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh requestImmediateDataFlush resumeWebTracking setLogger setSdkAuthenticationSignature stopWebTracking subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToNewInAppMessages subscribeToSdkAuthenticationFailures toggleAppboyLogging trackLocation unregisterAppboyPushMessages wipeData".split(" ");
for(var d=0;d<a.length;d++){for(var l=a[d],e=c.appboy,f=l.split("."),b=0;b<f.length-1;b++)e=e[f[b]];e[f[b]]=(new Function("return function "+l.replace(/\./g,"_")+"(){window.appboyQueue.push(arguments); return true}"))()}window.appboy.getCachedContentCards=function(){return new window.appboy.ContentCards};window.appboy.getCachedFeed=function(){return new window.appboy.Feed};window.appboy.getUser=function(){return new window.appboy.User};(a=g.createElement(h)).type="text/javascript";a.src="https://js.appboycdn.com/web-sdk/3.3/appboy.min.js";
a.async=1;(k=g.getElementsByTagName(h)[0]).parentNode.insertBefore(a,k)}(window,document,"script");window.appboy.initialize("0f16a1c6-2a4e-47f2-a8e9-848f130d7d1b",{baseUrl:"sdk.iad-05.braze.com"});window.appboy.display.automaticallyShowNewInAppMessages();window.appboy.openSession();</script>
	<div id="ch-plugin" class="notranslate">
		<div id="ch-plugin-script" style="display: none"
			class="ch-messenger-hidden">
			<iframe id="ch-plugin-script-iframe"
				style="position: relative !important; height: 100% !important; width: 100% !important; border: none !important;"></iframe>
		</div>
		<style data-styled="active" data-styled-version="5.1.1"></style>
		<div style="display: block !important;"></div>
	</div>
	<img
		src="https://t.co/i/adsct?bci=3&amp;eci=2&amp;event_id=bae7ff7c-7b9d-4d1e-81db-56d40265223b&amp;events=%5B%5B%22pageview%22%2C%7B%7D%5D%5D&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=6c3d46f1-6f13-4a7e-91ec-46be825b4de7&amp;tw_document_href=https%3A%2F%2Ftaling.me%2FTalent%2FDetail%2F5547&amp;tw_iframe_status=0&amp;tw_order_quantity=0&amp;tw_sale_amount=0&amp;txn_id=o614t&amp;type=javascript&amp;version=2.3.29"
		height="1" width="1" style="display: none;">
	<img
		src="https://analytics.twitter.com/i/adsct?bci=3&amp;eci=2&amp;event_id=bae7ff7c-7b9d-4d1e-81db-56d40265223b&amp;events=%5B%5B%22pageview%22%2C%7B%7D%5D%5D&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=6c3d46f1-6f13-4a7e-91ec-46be825b4de7&amp;tw_document_href=https%3A%2F%2Ftaling.me%2FTalent%2FDetail%2F5547&amp;tw_iframe_status=0&amp;tw_order_quantity=0&amp;tw_sale_amount=0&amp;txn_id=o614t&amp;type=javascript&amp;version=2.3.29"
		height="1" width="1" style="display: none;">
	<script type="text/javascript" id="">kakaoPixel("1164066569979408845").pageView();</script>
	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-876466920");</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","666003960220481");fbq("set","agent","tmgoogletagmanager","666003960220481");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=666003960220481&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="">fbq("trackCustom","ScrollTracking",{content_type:"Product",content_ids:[google_tag_manager["GTM-MTJJTC6"].macro(27)],value:google_tag_manager["GTM-MTJJTC6"].macro(28),content_name:google_tag_manager["GTM-MTJJTC6"].macro(29),currency:"KRW",content_category:document.url,scroll_depth:google_tag_manager["GTM-MTJJTC6"].macro(30)});</script>
</body>
</body>

</html>