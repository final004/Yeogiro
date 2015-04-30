window.fbAsyncInit = function() {

	// 초기화
	FB.init({
		appId : '601551293315610', // App ID
		// channelUrl :
		// '//127.0.0.1:8020/rotuebook_html5/WebContent/testCase//FB_channel.html',
		// // Channel File
		status : true, // check login status
		cookie : true, // enable cookies to allow the server to access the
		// session
		xfbml : true
	// parse XFBML
	});

	// Additional initialization code here
	/*
	 * FB.ui({ method: 'feed', message: 'Facebook for Websites is super-cool'
	 * });
	 */

	// 페이지 로드 했을시 호출
	FB.getLoginStatus(function(response) {
				if (response.status === 'connected') {

					function getUser() {
						FB.getLoginStatus(handleSessionResponse);
						function handleSessionResponse(response) {
							if (!response.session) {
								//
							} else {
								FB.api(
												{
													method : 'fql.query',
													query : 'select uid,name,email,pic_square from user where uid  = "'
															+ FB.getSession().uid
															+ '"'
												},
												function(response) {
													for (var i = 0; i < response.length; i++) {
														response[i].uid; // 유저아이디
														response[i].pic_square; // 사진
														response[i].name; // 이름
														response[i].email; // 이메일주소
													}
												});
							}
						}
						// 로그인 되는 순간 호출
						FB.Event.subscribe('auth.login', function(response) {
							alert("안녕!");
							document.location.reload();
						});
					}

					var uid = response.authResponse.userID;
					var accessToken = response.authResponse.accessToken;
					console.log(accessToken);

				} else if (response.status === 'not_authorized') {
					// the user is logged in to Facebook,
					// but has not authenticated your app
				} else {
					// the user isn't logged in to Facebook.
				}
			});

	
	// 로그아웃 되는 순간 호출
	FB.Event.subscribe('auth.logout', function(response) {
		alert("잘가!");
		document.location.reload();
	});

	/*
	 * FB.login(function(response) { if (response.authResponse) {
	 * console.log('Welcome! Fetching your information.... '); FB.api('/me',
	 * function(response) { console.log('Good to see you, ' + response.name +
	 * '.'); }); } else { console.log('User cancelled login or did not fully
	 * authorize.'); } });
	 */
};

// Load the SDK Asynchronously
(function(d) {
	var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	if (d.getElementById(id)) {
		return;
	}
	js = d.createElement('script');
	js.id = id;
	js.async = true;
	js.src = "//connect.facebook.net/ko_KR/all.js";
	ref.parentNode.insertBefore(js, ref);
}(document));
// end Load the SDK Asynchronously

(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.3&appId=601551293315610";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

