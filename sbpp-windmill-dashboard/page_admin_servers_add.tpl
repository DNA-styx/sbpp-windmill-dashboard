<!-- Start Server add Page -->
<div class="tabcontent" id="Add new server">
    {if not $permission_addserver}
        Access Denied
    {else}

        <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
            <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                <div class="w-full">

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Server IP/Domain</span>
                        <input type="text" TABINDEX=1
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="address" name="address" value="{$ip}">
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        This is the IP address or hostname of your server.
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="address.msg" class="badentry"></div>
                    </span>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Server Port</span>
                        <input type="text" TABINDEX=2
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="port" name="port" value="{if $port}{$port}{else}{27015}{/if}">
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        This is the port that the server is running off. <i>Default: 27015</i>
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="port.msg" class="badentry"></div>
                    </span>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">RCON Password</span>
                        <input type="password" TABINDEX=3
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="rcon" name="rcon" value="{$rcon}">
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        This is your servers RCON password. This can be found in your server.cfg file next to
                        <i>rcon_password</i>. This
                        will be used to allow admins to administrate the server though the web interface.
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="rcon.msg" class="badentry"></div>
                    </span>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">RCON Password (Confirm)</span>
                        <input type="password" TABINDEX=4
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="rcon2" name="rcon2" value="{$rcon}">
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        Please re-type your rcon password to avoid 'typos'.
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="rcon2.msg" class="badentry"></div>
                    </span>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Server MOD</span>
                        <select name="mod" TABINDEX=5 onchange="" id="mod"
                            class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                            {if !$edit_server}
                                <option value="-2">Please Select...</option>
                            {/if}
                            {foreach from=$modlist item="mod"}
                                <option value='{$mod.mid}'>{$mod.name}</option>
                            {/foreach}
                        </select>
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        Select the mod that your server is currently running.
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="mod.msg" class="badentry"></div>
                    </span>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Enabled?</span>
                        <input type="checkbox" id="enabled" name="enabled" checked="checked"
                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        Enables the server to be shown on the public servers list.
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="enabled.msg" class="badentry"></div>
                    </span>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Server Groups</span>
                        {foreach from=$grouplist item="group"}
                            <label class="flex items-center dark:text-gray-400">
                                <input type="checkbox" value="{$group.gid}" id="g_{$group.gid}" name="groups[]"
                                    class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" />
                                <span class="ml-2">{$group.name}</span>
                                </span>
                            </label>
                        {/foreach}
                    </label>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        Choose the groups to add this server to. Server groups are used for adding admins to specific sets
                        of servers.
                    </div>
                    <span class="text-xs text-red-600 dark:text-red-400">
                        <div id="loginPassword.msg" class="badentry"></div>
                    </span>

                    <div class="flex mt-6 text-sm">
                        <label class="flex items-center dark:text-gray-400">
                            {if $edit_server}
                                {sb_button text=$submit_text onclick="process_edit_server();" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="aserver" submit=false}
                            {else}
                                {sb_button text=$submit_text onclick="process_add_server();" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="aserver" submit=false}
                            {/if}
                            &nbsp;
                            {sb_button text="Exit" onclick="document.location='index.php?p=admin&c=servers'" class="cancel block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="back" submit=false}
                        </label>
                    </div>

                </div>
            </div>
        </div>
    </div>





<!--

        <div id="add-group">
            <h3>Server Details</h3>
            For more information or help regarding a certain subject move your mouse over the question mark.<br /><br />
            <input type="hidden" name="insert_type" value="add">
            <table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">{help_icon title="Server Address" message="This is the IP address to your server. You can also type a domain, if you have one setup."}Server IP/Domain</div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="text" TABINDEX=1 class="textbox" id="address" name="address" value="{$ip}" style="width: 203px" />
                        </div>
                        <div id="address.msg" class="badentry"></div>
                    </td>
                </tr>

                <tr>
                    <td valign="middle">
                        <div class="rowdesc">{help_icon title="Server Port" message="This is the port that the server is running off. <br /><br /><i>Default: 27015</i>"}Server Port</div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="text" TABINDEX=2 class="textbox" id="port" name="port" value="{if $port}{$port}{else}{27015}{/if}" style="width: 203px" />
                        </div>
                        <div id="port.msg" class="badentry"></div>
                    </td>
                </tr>

                <tr>
                    <td valign="middle">
                        <div class="rowdesc">{help_icon title="Rcon Password" message="This is your servers RCON password. This can be found in your server.cfg file next to <i>rcon_password</i>.<br /><br />This will be used to allow admins to administrate the server though the web interface."}RCON Password</div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="password" TABINDEX=3 class="textbox" id="rcon" name="rcon" value="{$rcon}" style="width: 203px" />
                        </div>
                        <div id="rcon.msg" class="badentry"></div>
                    </td>
                </tr>

                <tr>
                    <td valign="middle">
                        <div class="rowdesc">{help_icon title="Rcon Password" message="Please re-type your rcon password to avoid 'typos'"}RCON Password (Confirm)</div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="password" TABINDEX=4 class="textbox" id="rcon2" name="rcon2" value="{$rcon}" style="width: 203px" />
                        </div>
                        <div id="rcon2.msg" class="badentry"></div>
                    </td>
                </tr>

                <tr>
                    <td valign="middle">
                        <div class="rowdesc">{help_icon title="Server Mod" message="Select the mod that your server is currently running."}Server MOD</div>
                    </td>
                    <td>
                        <div align="left" id="admingroup">
                            <select name="mod" TABINDEX=5 onchange="" id="mod" class="select">
                                {if !$edit_server}
                                    <option value="-2">Please Select...</option>
                                {/if}
                                {foreach from=$modlist item="mod"}
                                    <option value='{$mod.mid}'>{$mod.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div id="mod.msg" class="badentry"></div>
                    </td>
                </tr>

                <tr>
                    <td valign="middle">
                        <div class="rowdesc">{help_icon title="Enabled" message="Enables the server to be shown on the public servers list."}Enabled</div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="checkbox" id="enabled" name="enabled" checked="checked" />
                        </div>
                        <div id="enabled.msg" class="badentry"></div>
                    </td>
                </tr>

                <tr>
                    <td valign="middle">
                        <div class="rowdesc">{help_icon title="Server Groups" message="Choose the groups to add this server to. Server groups are used for adding admins to specific sets of servers."}Server Groups </div>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                {foreach from=$grouplist item="group"}
                    <tr>
                        <td valign="middle">
                            <div align="right">{$group.name} </div>
                        </td>
                        <td>
                            <div align="left">
                                <input type="checkbox" value="{$group.gid}" id="g_{$group.gid}" name="groups[]" />
                            </div>
                        </td>
                    </tr>
                {/foreach}
                <tr id="nsgroup" valign="top" class="badentry">
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        {if $edit_server}
                            {sb_button text=$submit_text onclick="process_edit_server();" class="ok" id="aserver" submit=false}
                        {else}
                            {sb_button text=$submit_text onclick="process_add_server();" class="ok" id="aserver" submit=false}
                        {/if}
                        &nbsp;
                        {sb_button text="Back" onclick="history.go(-1)" class="cancel" id="back" submit=false}
                    </td>
                </tr>
            </table>
        </div>
    {/if}
</div>
</div>
-->



<!-- End Server add Page -->