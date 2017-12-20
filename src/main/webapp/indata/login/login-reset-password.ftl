<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <script>
            tablogin();
        </script>
        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <span class="input-group-addon">
                        <div class="user"></div>
                    </span>
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${properties.kcReFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!} ${properties.kcResetPasswdFormButtonsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!} ${properties.kcResetPasswdFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonResetPasswordClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
                </div>
            </div>
            <div class="restpasswdtip"> ${msg("emailInstruction")}</div>
        </form>
    </#if>
</@layout.registrationLayout>
