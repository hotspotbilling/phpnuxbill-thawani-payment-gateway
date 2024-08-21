{include file="sections/header.tpl"}

<form class="form-horizontal" method="post" autocomplete="off" role="form" action="{$_url}paymentgateway/thawani">
    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel panel-primary panel-hovered panel-stacked mb30">
                <div class="panel-heading">{Lang::T('Thawani Payment Gateway Settings')}</div>
                <div class="panel-body">
{*                    create dropdownmenu for prodection and testing *}
                    <div class="form-group">
                        <label class="col-md-2 control-label">Thawani Stage</label>
                        <div class="col-md-6">
                            <select class="form-control" id="thawani_stage" name="thawani_stage">
                                <option value="Live" {if $_c['thawani_stage'] == 'Live'}selected{/if}>{Lang::T('Live')}</option>
                                <option value="Testing" {if $_c['thawani_stage'] == 'Testing'}selected{/if}>{Lang::T('Testing')}</option>
                            </select>
                        </div>

                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Publishable Key</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="thawani_publishable_key" name="thawani_publishable_key"
                                   value="{$_c['thawani_publishable_key']}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">Secret Key</label>
                        <div class="col-md-6">
                            <input type="password" class="form-control" id="thawani_secret_key" name="thawani_secret_key"
                                   value="{$_c['thawani_secret_key']}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Thawani {Lang::T('live url')}</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="thawani_live_url" name="thawani_live_url"
                                   value="{$_c['thawani_live_url']}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Thawani {Lang::T('testing url')}</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="thawani_testing_url" name="thawani_testing_url"
                                   value="{$_c['thawani_testing_url']}">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary waves-effect waves-light" type="submit">{Lang::T('Save Change')}</button>
                        </div>
                    </div>
                    <pre>/ip hotspot walled-garden
add dst-host=thawani.om
add dst-host=*.thawani.om</pre>
                    <small id="emailHelp" class="form-text text-muted">{Lang::T('Set Telegram Bot to get any error and
                        notification')}</small>
                </div>
            </div>

        </div>
    </div>
</form>

{include file="sections/footer.tpl"}
