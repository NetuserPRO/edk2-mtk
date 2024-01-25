[Defines]
  PLATFORM_NAME                  = ruby
  PLATFORM_GUID                  = 54d47bf2-32f2-4532-9438-1b6971dc59c0
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/MediaTek/mt6877/mt6877.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/MediaTek/mt6877/mt6877.fdf.inc

!include Platform/MediaTek/mt6877/mt6877.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT

[PcdsFixedAtBuild.common]
  gMediaTekTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gMediaTekTokenSpaceGuid.PcdMipiFrameBufferHeight|2400
  gMediaTekTokenSpaceGuid.PcdMipiFrameBufferAddress|0x7ED58000

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|400

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Xiaomi"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Redmi Note 12 Pro"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"ruby"
