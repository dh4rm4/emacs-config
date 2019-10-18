# Custom Emacs Config

## How To

```
bash setup.sh
```

## 42 Header file

If you do not explicity define the username used in the 42's header file, the env variable ${USER} will be used.

You can force the value by defining the variable ${USERNAME_42}

```
echo "export USERNAME_42=\"my_login\"" >> ${HOME}/.`echo ${SHELL} | rev | cut -d'/' -f 1 | rev`rc
```
