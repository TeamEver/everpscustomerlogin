
{if !$customer.is_logged}
<div class="card card-block">
  <form action="{$link->getPageLink('authentication', true)|escape:'htmlall':'UTF-8'}?back={$urls.current_url|escape:'htmlall':'UTF-8'}" method="post" id="login-form" class="box">
      <p class="text-uppercase h6 hidden-sm-down">{l s='Connexion' mod='everpscustomerlogin'}</p>
      <div class="form_content clearfix">
          <div class="form-group">
              <label>{l s='Email' mod='everpscustomerlogin'}</label> 
              <input class="is_required validate account_input form-control" id="email" name="email" value="" type="text" />
          </div>
      <div class="form-group">
          <label>{l s='Mot de passe' mod='everpscustomerlogin'}</label>
          <input class="form-control js-child-focus js-visible-password" type="password" id="password" name="password" value="" />
      </div>
      <p class="lost_password form-group">
          <a href="{$link->getPageLink('password', true)|escape:'htmlall':'UTF-8'}" title="{l s='Recover your forgotten password' mod='everpscustomerlogin'}">{l s='Mot de passe oublié ?' mod='everpscustomerlogin'}</a>
      </p>
      <p class="submit">
          <input type="hidden" name="submitLogin" value="1">
          <input type="hidden" class="hidden" name="back" value="{$urls.current_url|escape:'htmlall':'UTF-8'}" />
          <button id="submit-login" class="btn btn-primary btn-blog-primary" data-link-action="sign-in" type="submit">
          {l s='Connexion' mod='everpscustomerlogin'}
        </button>
      </p>
      </div>
  </form>
</div>
{/if}