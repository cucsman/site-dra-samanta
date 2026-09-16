# template-estetica

Template mestre de landing page para o nicho estética (Playbook RDM, Fase 1).
Um único `index.html` autocontido: 9 seções fixas, 3 paletas, botão de WhatsApp parametrizado, SEO local (meta + JSON-LD).

## Estrutura
- `index.html` — o site inteiro (HTML + CSS + JS inline). Dados de contato no bloco `CONFIG` no fim do arquivo; pontos a trocar marcados com `[TODO]`.
- `briefing.md` — formulário padrão preenchido com o cliente antes de produzir.
- Paleta: atributo `data-theme` na tag `<html>` → `rose` | `salvia` | `noir`.

## Subir o template no GitHub (uma vez)
No Mac mini, dentro desta pasta:
```bash
git init && git add -A && git commit -m "template-estetica v1"
gh repo create template-estetica --private --source=. --push
# marcar como template:
gh repo edit template-estetica --template
```

## Novo cliente (o fluxo de 2h)
```bash
gh repo create site-NOMECLIENTE --private --template SEU_USUARIO/template-estetica --clone
cd site-NOMECLIENTE
# colar o briefing preenchido em briefing.md e as fotos em img/
claude
```
Prompt para o Claude Code:
> Leia briefing.md e adapte todo o index.html: textos, procedimentos, paleta escolhida (data-theme), fotos da pasta img/ nas molduras .arch, WhatsApp e mensagens data-msg, endereço, horários, iframe do Maps, meta tags e JSON-LD. Não altere a estrutura das 9 seções nem o design system. Remova todos os [TODO].

Se o cliente pagou por identidade visual própria, acrescente: "use a skill frontend-design para evoluir o visual a partir do briefing".

## Deploy (Vercel)
```bash
vercel --prod
```
ou conectar o repo no painel da Vercel (deploy automático a cada push). Depois: apontar o domínio do cliente e conferir HTTPS + preview do link no WhatsApp.

## Antes de entregar
Rodar o checklist de publicação da Fase 6 do playbook (mobile, links, WhatsApp, textos, SEO, aba anônima).
