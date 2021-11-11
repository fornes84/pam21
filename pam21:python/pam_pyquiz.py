# pam_mates.py
# Validar l’usuari realitzant una pregunta de matemàtiques
def pam_sm_authenticate(pamh, flags, argv):
print("Entrenador actual barça (en minuscules) ?")
resposta=str(input())
if resposta == "xavi":
return pamh.PAM_SUCCESS
else:
return pamh.PAM_AUTHTOK_ERR
def pam_sm_setcred(pamh, flags, argv):
return pamh.PAM_SUCCESS
def pam_sm_acct_mgmt(pamh, flags, argv):
return pamh.PAM_SUCCESS
def pam_sm_open_session(pamh, flags, argv):
return pamh.PAM_SUCCESS
def pam_sm_close_session(pamh, flags, argv):
return pamh.PAM_SUCCESS
def pam_sm_chauthtok(pamh, flags, argv):
return pamh.PAM_SUCCESS
