<!-- Start Protest ban page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <p class="mb-8 text-gray-600 dark:text-gray-400">
        In order to appeal a ban, you must make sure you are banned via clicking <a class="font-semibold"
            href="index.php?p=banlist">here</a> to see if you are banned and for what reason.<br>
        If you are indeed on our ban list and you feel it is unjust or any other circumstances, please fill out the
        appeal format below.
    </p>
    <form action="index.php?p=protest" method="post" class="mb-8">
        <input type="hidden" name="subprotest" value="1">
        <table class="block text-sm">
            <tr>
                <td>
                    <span class="text-gray-700 dark:text-gray-400">Ban Type:</span>
                    <select
                        class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
                        id="Type" name="Type" onChange="changeType(this[this.selectedIndex].value);">
                        <option value="0">Steam ID</option>
                        <option value="1">IP Address</option>
                    </select>
                </td>
            </tr>
            <tr id="steam.row">
                <td>
                    <span class="text-gray-700 dark:text-gray-400">Your SteamID *:</span>
                    <input
                        class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                        maxlength="64" name="SteamID" value="{$steam_id}">
                </td>
            </tr>
            <tr id="ip.row" style="display: none;">
                <td>
                    <span class="text-gray-700 dark:text-gray-400">Your IP *:</span>
                    <input
                        class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                        maxlength="64" name="IP" value="{$ip}">
                </td>
            </tr>
            <tr>
                <td>
                    <span class="text-gray-700 dark:text-gray-400">Your In Game Name *:</span>
                    <input
                        class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                        maxlength="64" name="PlayerName" value="{$player_name}">
                </td>
            </tr>
            <tr>
                <td>
                    <span class="text-gray-700 dark:text-gray-400">Reason why you should be unbanned *:<br>
                    (Be as descriptive as possible)</span>
                    <textarea
                        class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
                        rows="3" name="BanReason">{$reason}</textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="text-gray-700 dark:text-gray-400">Your Email*:</span>
                    <input
                        class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                        maxlength="70" name="EmailAddr" value="{$player_email}">
                </td>
            </tr>
            <tr>
                <td>
                    <span class="text-gray-700 dark:text-gray-400">* = Mandatory Field</span>
                    {sb_button text=Submit class="windmill-button ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center border border-transparent rounded-lg" id=alogin submit=true}
                </td>
            </tr>
        </table>
    </form>
    <p class="text-gray-600 dark:text-gray-400"><b>What happens after I submit my appeal?</b><br>
        The staff team will be notified of your appeal. They will then review if the ban is conclusive. After reviewing
        you will get a reply, which usally means within 24 hours. <br>
        <b>Note:</b> Sending emails with threats to our admins, scolding or shouting will not get you unbanned and you
        will be permanently denied from using any of our services.
    </p>
</div>
<!-- End Protest ban page -->