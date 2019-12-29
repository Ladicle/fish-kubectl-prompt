# fish-kubectl-prompt

[![Slack Room][slack-badge]][slack-link]

Display information about the kubectl current context and namespace in fish prompt.

![normal-prompt](https://user-images.githubusercontent.com/1159133/33415205-5f428d52-d5d8-11e7-9ecb-e78fa8c784e0.png)
![error-prompt](https://user-images.githubusercontent.com/1159133/33415236-908ee694-d5d8-11e7-9eb0-307cd512ae4b.png)

## CUSTOMIZE

If you want to customize, override the following environment variables.

set KUBECTL_PROMPT_ICON "⎈"
set KUBECTL_PROMPT_SEPARATOR "/"

## Install

With [fisherman]

```
fisher add Ladicle/fish-kubectl-prompt
```

[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
