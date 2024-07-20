            <!-- Big section cards -->
            <div
              class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800"
            >
            <p class="text-sm text-gray-600 dark:text-gray-400">
                In order to keep our servers running smoothly, offenders of our rules should be punished and we can't always be on call to help.<br>
                When submitting a player report, we ask you to fill out the report as detailed as possible to help ban the offender as this will help us process your report quickly.<br>
                If you are unsure on how to record evidence within in-game, 
                <a href="#" @click="openModal">
                    please click here
                </a>
                 for an explanation.
            </p>

            <br><br>

    <form action="index.php?p=submit" method="post" enctype="multipart/form-data">
        <input type="hidden" name="subban" value="1">
        <table cellspacing='10' width='100%' align='center'>
            <tr>
                <td colspan="3">
                    Ban Details:	</td>
            </tr>
            <tr>
                <td width="20%">
                <span class="text-gray-700 dark:text-gray-400">Players SteamID:</span></td>
                <td>
                    <input type="text" name="SteamID" size="40" maxlength="64" value="{$STEAMID}" class="textbox" style="width: 250px;" />
                </td>
            </tr>
            <tr>
                <td width="20%">
                <span class="text-gray-700 dark:text-gray-400">Players IP:</span></td>
                <td>
                    <input type="text" name="BanIP" size="40" maxlength="64" value="{$ban_ip}" class="textbox" style="width: 250px;" />
                </td>
            </tr>
            <tr>
                <td width="20%">
                <span class="text-gray-700 dark:text-gray-400">Players Nickname *</span></td>
                <td>
                    <input type="text" size="40" maxlength="70" name="PlayerName" value="{$player_name}" class="textbox" style="width: 250px;" /></td>
            </tr>
            <tr>
                <td width="20%" valign="top">
                    <span class="text-gray-700 dark:text-gray-400">
                        Comments *<br />
                        <small>(Please write down a descriptive comment. So NO comments like: "hacking")</small>	
                    </span>
                </td>
                <td><textarea name="BanReason" cols="30" rows="5" class="textbox" style="width: 250px;">{$ban_reason}</textarea></td>
            </tr>
            <tr>
                <td width="20%">
                <span class="text-gray-700 dark:text-gray-400">Your Name:</span></td>
                <td>
                    <input type="text" size="40" maxlength="70" name="SubmitName" value="{$subplayer_name}" class="textbox" style="width: 250px;" />	</td>
            </tr>

            <tr>
                <td width="20%">
                <span class="text-gray-700 dark:text-gray-400">Your Email *:</span></td>
                <td>
                    <input type="text" size="40" maxlength="70" name="EmailAddr" value="{$player_email}" class="textbox" style="width: 250px;" />	</td>
            </tr>
            <tr>
                <td width="20%">
                <span class="text-gray-700 dark:text-gray-400">Server *:</span></td>
                <td colspan="2">
                    <select id="server" name="server" class="select" style="width: 277px;">
                        <option value="-1">-- Select Server --</option>
                        {foreach from=$server_list item="server"}
                            <option value="{$server.sid}" {if $server_selected == $server.sid}selected{/if}>{$server.hostname}</option>
                        {/foreach}
			<option value="0">Other server / Not listed here</option>
		</select> 
    </td>
    </tr>
<tr>
	<td width="20%">
    <span class="text-gray-700 dark:text-gray-400">Upload demo:</span></td>
	<td>
		<input name="demo_file" type="file" size="25" class="file" style="width: 268px;" /><br />
		<p class="text-sm text-gray-600 dark:text-gray-400">
            Note: Only DEM, <a href="http://www.winzip.com" target="_blank">ZIP</a>, <a href="http://www.rarlab.com" target="_blank">RAR</a>, <a href="http://www.7-zip.org" target="_blank">7Z</a>, <a href="http://www.bzip.org" target="_blank">BZ2</a> or <a href="http://www.gzip.org" target="_blank">GZ</a> allowed.	</td>
        </p>                    
    </tr>
<tr>
	<td width="20%"><span class="text-gray-700 dark:text-gray-400">* = Mandatory Field</span></td>
	<td>
		{sb_button text=Submit onclick="" class=ok id=save submit=true}
	</td>
    <td>&nbsp;</td>
</tr>
</table>
</form>

<br>

<p class="text-sm text-gray-600 dark:text-gray-400">
    <b>What happens if someone gets banned?</b><br />
    If someone you reported gets banned, the SteamID or IP will be included onto the ban on the main bans list and everytime they try to connect to any server they will be blocked from joining and it will be logged into our database.
</p>



</div>



    <!-- Modal backdrop. This what you want to place close to the closing body tag -->
    <div
      x-show="isModalOpen"
      x-transition:enter="transition ease-out duration-150"
      x-transition:enter-start="opacity-0"
      x-transition:enter-end="opacity-100"
      x-transition:leave="transition ease-in duration-150"
      x-transition:leave-start="opacity-100"
      x-transition:leave-end="opacity-0"
      class="fixed inset-0 z-30 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center"
    >
      <!-- Modal -->
      <div
        x-show="isModalOpen"
        x-transition:enter="transition ease-out duration-150"
        x-transition:enter-start="opacity-0 transform translate-y-1/2"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in duration-150"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0  transform translate-y-1/2"
        @click.away="closeModal"
        @keydown.escape="closeModal"
        class="w-full px-6 py-4 overflow-hidden bg-white rounded-t-lg dark:bg-gray-800 sm:rounded-lg sm:m-4 sm:max-w-xl"
        role="dialog"
        id="modal"
      >
        <!-- Remove header if you don't want a close icon. Use modal body to place modal tile. -->
        <header class="flex justify-end">
          <button
            class="inline-flex items-center justify-center w-6 h-6 text-gray-400 transition-colors duration-150 rounded dark:hover:text-gray-200 hover: hover:text-gray-700"
            aria-label="close"
            @click="closeModal"
          >
            <svg
              class="w-4 h-4"
              fill="currentColor"
              viewBox="0 0 20 20"
              role="img"
              aria-hidden="true"
            >
              <path
                d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                clip-rule="evenodd"
                fill-rule="evenodd"
              ></path>
            </svg>
          </button>
        </header>
        <!-- Modal body -->
        <div class="mt-4 mb-6">
          <!-- Modal title -->
          <p
            class="mb-2 text-lg font-semibold text-gray-700 dark:text-gray-300"
          >
            How To Record Evidence
          </p>
          <!-- Modal description -->
          <p class="text-sm text-gray-700 dark:text-gray-400">
          The best way to record evidence on someone breaking the rules would be to use Shadow Play or Plays.TV. 
          Both pieces of software will record your game 24/7 with little to no impact on your game and you simply 
          press a keybind to record the last X amount of minutes of gameplay which is perfect for catching rule breakers.
          <br>
          Alternatively, you can use the old method of using demos. While you are spectating the offending player, 
          press the ` key on your keyboard to show the Developers Console. If this does not show, you will need to go into 
          your Game Settings and enable this. Then type `record [demoname]` and hit enter, the file will then be in your 
          mod folder of your game directory.
          </p>
        </div>
        <footer
          class="flex flex-col items-center justify-end px-6 py-3 -mx-6 -mb-4 space-y-4 sm:space-y-0 sm:space-x-6 sm:flex-row bg-gray-50 dark:bg-gray-800"
        >
            <button
                @click="closeModal"
                class="w-full px-5 py-3 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg sm:w-auto sm:px-4 sm:py-2 active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
                >
            Close
        </button>
    </footer>
      </div>
    </div>
    <!-- End of modal backdrop -->