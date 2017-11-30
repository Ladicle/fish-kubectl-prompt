function fish_right_prompt
  set -l config $KUBECONFIG
  [ -z "$config" ]; and set -l config "$HOME/.kube/config"
  if [ ! -f $config ]
    echo (set_color red)"⎈ "(set_color white)"no config"
    return
  end

  set -l ctx (kubectl config current-context 2>/dev/null)
  if [ $status -ne 0 ]
    echo (set_color red)"⎈ "(set_color white)"no context"
    return
  end

  set -l ns (kubectl config view -o "jsonpath={.contexts[?(@.name==\"$context\")].context.namespace}")
  [ -z $ns ]; and set -l ns 'default'

  echo (set_color cyan)"⎈ "(set_color white)"($ctx/$ns)"
end
