## Files
Each workflow is named using following convention :<br>
\[Category\]-\[Workflow\]-\[Model\]-\[Method\]

For each workflow you will find the .json, .png and api file
.api file are compatible with comfyui batch project that will be soon released

Each output image is named using following convention: <br>
\[DateDir\]/\[DateTime\]\_\[ID\]\_\[Model\]\_\[Method\]\_\[Clip\]\_\[Seed\]

## Categories
Num | ID | Name | Output File ID |
--- | --- | --- | --- |
01 | txt2img | Text to Image | T2I |
02 | img2img | Image to Image | I2I |
03 | inpaint | Image Inpaint | IIP |
04 | outpaint | Image Outpaint | IOP |
05 | remove | Remove | REM |
06 | upscale | Image Upscale | IUS |
07 | restore | Restore | RES |
30 | face2img | Face to Image | F2I |
31 | faceswap | Face swap | FSW |
32 | couple | Couple Face | CPL |

## Workflows
Num | Catagory | Workflow | Output File ID | Description |
--- | --- | --- |  --- |   --- |
0100 | Text to Image | txt2img-basic | T2I-BASIC | Create an image using prompts |
0200 | Image to Image | img2img-basic | I2I-BAS | Create an image using another image (2 Controlnet & 2 LoRAs as option) |
0201 | Image to Image | img2img-cn+upscale | I2I-CN+UPS | Create an image using constraint from another image + Latent Upscale |
0202 | Image to Image | img2img-colorize | I2I-COL | Colorize a black and white image using Controlnet |
0210 | Image to Image | img2img-wdtagger | I2I-WDT | Create an image using auto tag from another |
0220 | Image to Image | img2img-ipa style | I2I-IAS | Create an image using IpAdapter Style Transfer |
0221 | Image to Image | img2img-ipa style+composition | I2I-IASC | Create an image using IpAdapter Style Transfer & Composition |
0230 | Image to Image | img2img-revision single zero | I2I-REVSZ | Revision with Single Image and Zero Prompt |
0230 | Image to Image | img2img-revision single prompt | I2I-REVSP | Revision with Single Image and Prompt |
0230 | Image to Image | img2img-revision mixed zero | I2I-REVMZ | Revision with two Images and Zero Prompt |
0230 | Image to Image | img2img-revision mixed prompt | I2I-REVMP | Revision with two Images and Prompt  |
0300 | Image Inpaint | img2img-inpaint-mask | INP-MSK | Change part of image using mask and prompt |
0302 | Image Inpaint | img2img-inpaint-background | INP-BGD | Change background of image using BRIAI BGRM and prompt |
0310 | Image Inpaint | inpaint-fooocus basic | INP-F-BGD | Change part of image using Fooocus Inpaint mask and prompt |
0311 | Image Inpaint | inpaint-fooocus refine | INP-F-R | Change part of image using Fooocus Inpaint mask and prompt |
0312 | Image Inpaint | inpaint-fooocus preprocess | INP-F-PP | Change part of image using Fooocus Inpaint mask, preprocess and prompt |
0313 | Image Inpaint | inpaint-fooocus promptless | INP-F-PL | Change part of image using Fooocus Inpaint mask without prompt |
0314 | Image Inpaint | inpaint-fooocus background | INP-F-BG | Change background of image using BRIAI BGRM and Fooocus Inpaint mask, preprocess and prompt |
0500 | Image Upscale | upscale-latent | IUS-LATENT | Upscale image using latent upscale |
0501 | Image Upscale | upscale-latent+cn | IUS-LATENT | Upscale image using latent upscale combined with ControlNet |
3000 | Face to Image | face2img-instantid | F2I-IID |  Create an image with a face using InstantID (2 Controlnet & 2 LoRAs as option) |
3010 | Face to Image | face2img-ipa faceid | F2I-IAF| Create an image with a face using IPAdapter FaceID (2 Controlnet & 2 LoRAs as option) |
3011 | Face to Image | face2img-ipa merge | F2I-IAF| Merge two faces using IPAdapter |
3020 | Face to Image | face2img-pulid | F2I-PID | Create an image with a face using PulID (2 Controlnet & 2 LoRAs as option) |
3100 | Face Swap | faceswap-instantid+(cn+lora)  | FSW-IID |  Create an image by swapping faces using InstantID (2 Controlnet & 2 LoRAs as option)|
3110 | Face Swap | faceswap-ipa faceid+ipa std+(cn+lora)  | FSW-IAF+IAS |  Create an image by swapping faces using IPAdapter FaceID & Standard (2 Controlnet & 2 LoRAs as option) |
3200 | Couple | couple-basic-lcm-sdxl-csd | CPL | Create a couple image |

## Model
Each workflow is made for a special model class listed below

ID | Link |
--- | --- |
SD15 | [Stable Diffusion 1.5](https://huggingface.co/runwayml/stable-diffusion-v1-5) |
SDXL | [Stable Diffusion XL](https://stability.ai/news/stability-ai-sdxl-turbo) |
SDLT | [Stable Diffusion XL Lightning]() |
SDTR | [Stable Diffusion XL Turbo]() |
SDHY | [Stable Diffusion XL Hyper]() |
SDCA | [Stable Diffusion Cascade](https://github.com/Stability-AI/StableCascade) |
SD30 | [Stable Diffusion 3.0](https://stability.ai/news/stable-diffusion-3-medium)|
FX10 | [Flux 1.0](https://blackforestlabs.ai/announcing-black-forest-labs/) |

## Architecture
Each workflow can use one or several architecture according to the model used

ID | Name | Paper | Works with |
--- | --- | --- | --- |
LDM | Large Diffusion Model | [High-Resolution Image Synthesis with Latent Diffusion Models](https://arxiv.org/abs/2112.10752) | SDXL, SDLT, SDTR, SDHY|
LDMR | Large Diffusion Model + Refiner | [High-Resolution Image Synthesis with Latent Diffusion Models](https://arxiv.org/abs/2112.10752) | SDXL |
LCML | Latent Consistency Model + LoRA | [LCM-LoRA: A Universal Stable-Diffusion Acceleration Module](https://arxiv.org/abs/2311.05556)  | SDLT, SDTR,  SDHY |
X0 | X0 | | SDLT 1 Step |
ADD | Adversarial Diffusion Distillation | [Adversarial Diffusion Distillation](https://arxiv.org/abs/2311.17042) | SDTR |
WSN | Würstchen | [Würstchen: An Efficient Architecture for Large-Scale Text-to-Image Diffusion Models](https://openreview.net/forum?id=gU58d5QeGv) | SDCA |
TCD | Trajectory Consistency Distillation | [Trajectory Consistency Distillation: Improved Latent Consistency Distillation by Semi-Linear Consistency Function with Trajectory Mapping](https://arxiv.org/abs/2402.19159)| SDHY |
MDT | Multimodal Diffusion Transformer | [Scaling Rectified Flow Transformers for High-Resolution Image Synthesis](https://arxiv.org/abs/2403.03206) <br> [Fast High-Resolution Image Synthesis with Latent Adversarial Diffusion Distillation](https://arxiv.org/abs/2403.12015)| SD30 |
MPDT | Multimodal Parallel Diffusion Transformer | [Scaling Rectified Flow Transformers for High-Resolution Image Synthesis](https://arxiv.org/abs/2403.03206) <br> [Scaling Vision Transformers to 22 Billion Parameters](https://arxiv.org/abs/2302.05442) <br> [Scalable Diffusion Models with Transformers](https://arxiv.org/abs/2212.09748) <br> [Flow Matching for Generative Modeling](https://arxiv.org/abs/2210.02747)| FX10 |

## Clip
ID | Name |
--- | --- |
CLSD | Clip Standard |
CLXL | Clip XL |
