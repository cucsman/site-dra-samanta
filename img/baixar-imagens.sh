#!/bin/sh
# Baixa as imagens aprovadas (Higgsfield) para img/ — rodar UMA vez, no terminal do Mac:
#   sh img/baixar-imagens.sh
# Enquanto não rodar, o site usa as mesmas imagens direto do CDN (fallback automático).
cd "$(dirname "$0")"
B="https://d8j0ntlcm91z4.cloudfront.net/user_3DjvtZXi51SOI1tV5xfZ09d74Q3"
# retratos IA aprovados da Dra. Samanta (16/09/2026)
curl -sf -o hero-dra-samanta.webp  "$B/hf_20260916_215221_41cccd15-fcd8-475f-a8b2-744fb41197e2_min.webp"
curl -sf -o sobre-dra-samanta.webp "$B/hf_20260916_215221_d6eee468-8dc8-438a-86b6-654270c7270b_min.webp"
# set paleta areia do template (placeholders até a cliente mandar fotos reais)
curl -sf -o espaco-areia.webp "$B/hf_20260914_175552_5edaa3bb-3656-4021-bcfb-4d77f54b9fe4_min.webp"
curl -sf -o proc-limpeza-areia.webp "$B/hf_20260914_175552_c749e73c-5577-4ed3-b69d-29ed19e8e827_min.webp"
curl -sf -o proc-peeling-areia.webp "$B/hf_20260914_175552_f6bb33bc-d5ec-438d-a48e-63cec593a9d4_min.webp"
curl -sf -o proc-microagulhamento-areia.webp "$B/hf_20260914_175553_aadae897-17b0-455a-996c-33ad50e5e755_min.webp"
curl -sf -o proc-drenagem-areia.webp "$B/hf_20260914_175551_cb9fa0f6-252b-4881-bd8f-419713ff2c43_min.webp"
curl -sf -o proc-modeladora-areia.webp "$B/hf_20260914_175552_3f6dfdbb-7892-4c42-a6c7-9ac825555b1d_min.webp"
curl -sf -o proc-sobrancelhas-areia.webp "$B/hf_20260914_175552_eafcf6a4-7322-426b-bb7d-cd2d99023a0c_min.webp"
# vídeos do hero (desktop)
mkdir -p ../video
curl -sf -o ../video/hero-peeling-areia.mp4 "$B/hf_20260914_182241_474f5fee-8dfb-418a-b5bc-420188faf9f9.mp4"
curl -sf -o ../video/hero-micro-areia.mp4   "$B/hf_20260914_182241_fed3b759-0069-4895-88a2-18c3f8ed6670.mp4"
ls -la *.webp
