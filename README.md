69 different workflows 

## Files
Each workflow is named using following convention :<br>
\[Category\]-\[Workflow\]-\[Method\]-\[Model\]-\[Clip\]

For each workflow you will find the .json, .png and api file
.api file are compatible with comfyui batch project that will be soon released

Each output image is named using following convention: <br>
\[DateDir\]/\[DateTime\]\_\[ID\]\_\[Method\]\_\[Model\]\_\[Clip\]\_\[Seed\]

## Categories
Num | ID | Name | Output File ID |
--- | --- | --- | --- |
01 | txt2img | Text to Image | T2I |
02 | img2img | Image to Image | I2I |
03 | inpaint | Image Inpaint | IIP |
04 | outpaint | Image Outpaint | IOP |
05 | upscale | Image Upscale | IUS |
30 | face2img | Face to Image | F2I |
31 | faceswap | Face swap | FSW |
32 | couple | Couple Face | CPL |

## Workflows
Num | Catagory | Workflow | Output File ID | Description |
--- | --- | --- |  --- |   --- |
0100 | Text to Image | txt2img | T2I | Create an image using prompts |
0200 | Image to Image | img2img-basic | I2I | Create an image using another image |
0201 | Image to Image | img2img-cn | I2I-CN | Create an image using constraint from another image|
0202 | Image to Image | img2img-cn+upscale | I2I-CN+UPS | Create an image using constraint from another image + Latent Upscale |
0210 | Image to Image | img2img-wdtagger | I2I-WDT | Create an image using auto tag from another |
0220 | Image to Image | img2img-ipa style | I2I-IAS | Create an image using IpAdapter Style Transfer |
0221 | Image to Image | img2img-ipa style+composition | I2I-IASC | Create an image using IpAdapter Style Transfer & Composition |
0300 | Image Inpaint | img2img-inpaint | INP | Change part of image using mask and prompt |
0500 | Image Upscale | upscale-latent | IUS-LATENT | Upscale image using latent upscale |
0501 | Image Upscale | upscale-latent+cn | IUS-LATENT | Upscale image using latent upscale combined with ControlNet |
3000 | Face to Image | face2img-instantid | F2I-IID |  Create an image with a face using InstantID |
3010 | Face to Image | face2img-ipa faceid | F2I-IAF| Create an image with a face using IPAdapter FaceID |
3011 | Face to Image | face2img-ipa faceid+lora | F2I-IAF+LORA | Create an image with a face combining IPAdapter FaceID and a LoRA |
3012 | Face to Image | face2img-ipa merge | F2I-IPA-MRG | Create an image by merging two faces |
3100 | Face Swap | faceswap-instantid  | FSW-IID |  Create an image by swapping faces using InstantID |
3101 | Face Swap | faceswap-instantid+cn | FSW-IID+CN | Create an image by swapping faces combining InstantID & Controlnet |
3102 | Face Swap | faceswap-instantid+cn+lora | FSW-IID+CN | Create an image by swapping faces combining InstantID & Controlnet & LoRA |
3110 | Face Swap | faceswap-ipa faceid+ipa std  | FSW-IAF+IAS |  Create an image by swapping faces using IPAdapter FaceID & Standar |
3111 | Face Swap | faceswap-ipa faceid+ipa std+lora | FSW-IAF+CN |  Create an image by swapping faces combining IPAdapter FaceID & Controlnet |
3112 | Face Swap | faceswap-ipa faceid+ipa std+cn | FSW-IAF+IAS+CN |  Create an image by swapping faces combining IPAdapter FaceID & Controlnet |
3200 | Couple | couple-basic-lcm-sdxl-csd | CPL | Create a couple image |

## Architecture
Each workflow can use one or several architecture according to the model used

ID | Name | Paper | Works with |
--- | --- | --- | --- |
LDM | Large Diffusion Model | [High-Resolution Image Synthesis with Latent Diffusion Models](https://arxiv.org/abs/2112.10752) | SDXL, SDLT, SDTR, SDHY|
LCM | Latent Consistency Model | [LCM-LoRA: A Universal Stable-Diffusion Acceleration Module](https://arxiv.org/abs/2311.05556)  | SDLT, SDTR,  SDHY |
ADD | Adversarial Diffusion Distillation | [Adversarial Diffusion Distillation](https://arxiv.org/abs/2311.17042) | SDTR |
WSN | Würstchen | [Würstchen: An Efficient Architecture for Large-Scale Text-to-Image Diffusion Models](https://openreview.net/forum?id=gU58d5QeGv) | SDCA |
TCD | Trajectory Consistency Distillation | [Trajectory Consistency Distillation: Improved Latent Consistency Distillation by Semi-Linear Consistency Function with Trajectory Mapping](https://arxiv.org/abs/2402.19159)| SDHY |
MDT | Multimodal Diffusion Transformer | [Scaling Rectified Flow Transformers for High-Resolution Image Synthesis](https://arxiv.org/abs/2403.03206) <br> [Fast High-Resolution Image Synthesis with Latent Adversarial Diffusion Distillation](https://arxiv.org/abs/2403.12015)| SD30 |

## Model
Each workflow is made for a special model class listed below

ID | Link |
--- | --- |
SD15 | [Stable Diffusion 1.5](https://huggingface.co/runwayml/stable-diffusion-v1-5) |
SDXL | [Stable Diffusion XL](https://stability.ai/news/stability-ai-sdxl-turbo) |
SD30 | [Stable Diffusion 3.0](https://stability.ai/news/stable-diffusion-3-medium)|
SDCA | [Stable Diffusion Cascade](https://github.com/Stability-AI/StableCascade) |

## Clip
ID | Name |
--- | --- |
CLSD | Clip Standard |
CLXL | Clip XL |
