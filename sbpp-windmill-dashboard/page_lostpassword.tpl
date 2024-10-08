<!-- Start lost password page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
        <div class="w-full">
            <div id="lostpassword">
                <div id="login-content">
                    <div id="msg-red msg-blue" style="display:none;">
                        <i class="fas fa-times fa-2x"></i>
                        <b>Error</b>
                        <br>
                        If your email is registered, you will receive a password reset link shortly. Please check your email inbox (and spam).</i>
                    </div>
                    <div class="mb-8 text-gray-700 dark:text-gray-400">
                            Please type your email address in the box below to have your password reset.
                    </div>
                    <div id="loginPasswordDiv">
                        <label for="email" class="text-gray-700 dark:text-gray-400">Your E-Mail Address:</label><br>
                        <input id="email"
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            type="text" name="password" value="">
                    </div>
                        {sb_button text=Submit onclick="xajax_LostPassword($('email').value);" class="windmill-button block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id=alogin submit=false}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start lost password page -->