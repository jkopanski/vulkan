#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternSynonyms       #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE ViewPatterns          #-}
module Graphics.Vulkan.Ext.VK_NV_fragment_coverage_to_color
       (-- * Vulkan extension: @VK_NV_fragment_coverage_to_color@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jeff Bolz @jbolz@
        --
        -- author: @NV@
        --
        -- type: @device@
        --
        -- Extension number: @150@
        VkPipelineCoverageToColorStateCreateInfoNV(..),
        VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION,
        pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION,
        VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME,
        pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV)
       where
import           Foreign.C.String                 (CString)
import           Foreign.Storable                 (Storable (..))
import           GHC.Prim
import           GHC.Ptr                          (Ptr (..))
import           Graphics.Vulkan.Common           (VkBool32, VkPipelineCoverageToColorStateCreateFlagsNV,
                                                   VkStructureType (..), Word32)
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.StructMembers
import           System.IO.Unsafe                 (unsafeDupablePerformIO)

-- | > typedef struct VkPipelineCoverageToColorStateCreateInfoNV {
--   >     VkStructureType sType;
--   >     const void*                                                                      pNext;
--   >     VkPipelineCoverageToColorStateCreateFlagsNV                    flags;
--   >     VkBool32                         coverageToColorEnable;
--   >     uint32_t         coverageToColorLocation;
--   > } VkPipelineCoverageToColorStateCreateInfoNV;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkPipelineCoverageToColorStateCreateInfoNV.html VkPipelineCoverageToColorStateCreateInfoNV registry at www.khronos.org>
data VkPipelineCoverageToColorStateCreateInfoNV = VkPipelineCoverageToColorStateCreateInfoNV## Addr##
                                                                                              ByteArray##

instance Eq VkPipelineCoverageToColorStateCreateInfoNV where
        (VkPipelineCoverageToColorStateCreateInfoNV## a _) ==
          x@(VkPipelineCoverageToColorStateCreateInfoNV## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkPipelineCoverageToColorStateCreateInfoNV where
        (VkPipelineCoverageToColorStateCreateInfoNV## a _) `compare`
          x@(VkPipelineCoverageToColorStateCreateInfoNV## b _)
          = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkPipelineCoverageToColorStateCreateInfoNV where
        sizeOf ~_
          = #{size VkPipelineCoverageToColorStateCreateInfoNV}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkPipelineCoverageToColorStateCreateInfoNV}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        unsafeAddr (VkPipelineCoverageToColorStateCreateInfoNV## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkPipelineCoverageToColorStateCreateInfoNV## _ b)
          = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkPipelineCoverageToColorStateCreateInfoNV##
              (plusAddr## (byteArrayContents## b) off)
              b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkPipelineCoverageToColorStateCreateInfoNV
         where
        type StructFields VkPipelineCoverageToColorStateCreateInfoNV =
             '["sType", "pNext", "flags", "coverageToColorEnable", -- ' closing tick for hsc2hs
               "coverageToColorLocation"]

instance {-# OVERLAPPING #-}
         HasVkSType VkPipelineCoverageToColorStateCreateInfoNV where
        type VkSTypeMType VkPipelineCoverageToColorStateCreateInfoNV =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkPipelineCoverageToColorStateCreateInfoNV where
        type FieldType "sType" VkPipelineCoverageToColorStateCreateInfoNV =
             VkStructureType
        type FieldOptional "sType"
               VkPipelineCoverageToColorStateCreateInfoNV
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkPipelineCoverageToColorStateCreateInfoNV
             =
             #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType}

instance CanReadField "sType"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkPipelineCoverageToColorStateCreateInfoNV where
        type VkPNextMType VkPipelineCoverageToColorStateCreateInfoNV =
             Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkPipelineCoverageToColorStateCreateInfoNV where
        type FieldType "pNext" VkPipelineCoverageToColorStateCreateInfoNV =
             Ptr Void
        type FieldOptional "pNext"
               VkPipelineCoverageToColorStateCreateInfoNV
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkPipelineCoverageToColorStateCreateInfoNV
             =
             #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext}

instance CanReadField "pNext"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkFlags VkPipelineCoverageToColorStateCreateInfoNV where
        type VkFlagsMType VkPipelineCoverageToColorStateCreateInfoNV =
             VkPipelineCoverageToColorStateCreateFlagsNV

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkPipelineCoverageToColorStateCreateInfoNV where
        type FieldType "flags" VkPipelineCoverageToColorStateCreateInfoNV =
             VkPipelineCoverageToColorStateCreateFlagsNV
        type FieldOptional "flags"
               VkPipelineCoverageToColorStateCreateInfoNV
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkPipelineCoverageToColorStateCreateInfoNV
             =
             #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags}

instance CanReadField "flags"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkCoverageToColorEnable
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        type VkCoverageToColorEnableMType
               VkPipelineCoverageToColorStateCreateInfoNV
             = VkBool32

        {-# NOINLINE vkCoverageToColorEnable #-}
        vkCoverageToColorEnable x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable})

        {-# INLINE vkCoverageToColorEnableByteOffset #-}
        vkCoverageToColorEnableByteOffset ~_
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable}

        {-# INLINE readVkCoverageToColorEnable #-}
        readVkCoverageToColorEnable p
          = peekByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable}

        {-# INLINE writeVkCoverageToColorEnable #-}
        writeVkCoverageToColorEnable p
          = pokeByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable}

instance {-# OVERLAPPING #-}
         HasField "coverageToColorEnable"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        type FieldType "coverageToColorEnable"
               VkPipelineCoverageToColorStateCreateInfoNV
             = VkBool32
        type FieldOptional "coverageToColorEnable"
               VkPipelineCoverageToColorStateCreateInfoNV
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "coverageToColorEnable"
               VkPipelineCoverageToColorStateCreateInfoNV
             =
             #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable}

instance CanReadField "coverageToColorEnable"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE getField #-}
        getField = vkCoverageToColorEnable

        {-# INLINE readField #-}
        readField = readVkCoverageToColorEnable

instance CanWriteField "coverageToColorEnable"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE writeField #-}
        writeField = writeVkCoverageToColorEnable

instance {-# OVERLAPPING #-}
         HasVkCoverageToColorLocation
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        type VkCoverageToColorLocationMType
               VkPipelineCoverageToColorStateCreateInfoNV
             = Word32

        {-# NOINLINE vkCoverageToColorLocation #-}
        vkCoverageToColorLocation x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation})

        {-# INLINE vkCoverageToColorLocationByteOffset #-}
        vkCoverageToColorLocationByteOffset ~_
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation}

        {-# INLINE readVkCoverageToColorLocation #-}
        readVkCoverageToColorLocation p
          = peekByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation}

        {-# INLINE writeVkCoverageToColorLocation #-}
        writeVkCoverageToColorLocation p
          = pokeByteOff p #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation}

instance {-# OVERLAPPING #-}
         HasField "coverageToColorLocation"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        type FieldType "coverageToColorLocation"
               VkPipelineCoverageToColorStateCreateInfoNV
             = Word32
        type FieldOptional "coverageToColorLocation"
               VkPipelineCoverageToColorStateCreateInfoNV
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "coverageToColorLocation"
               VkPipelineCoverageToColorStateCreateInfoNV
             =
             #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation}

instance CanReadField "coverageToColorLocation"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE getField #-}
        getField = vkCoverageToColorLocation

        {-# INLINE readField #-}
        readField = readVkCoverageToColorLocation

instance CanWriteField "coverageToColorLocation"
           VkPipelineCoverageToColorStateCreateInfoNV
         where
        {-# INLINE writeField #-}
        writeField = writeVkCoverageToColorLocation

instance Show VkPipelineCoverageToColorStateCreateInfoNV where
        showsPrec d x
          = showString "VkPipelineCoverageToColorStateCreateInfoNV {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkFlags = " .
                            showsPrec d (vkFlags x) .
                              showString ", " .
                                showString "vkCoverageToColorEnable = " .
                                  showsPrec d (vkCoverageToColorEnable x) .
                                    showString ", " .
                                      showString "vkCoverageToColorLocation = " .
                                        showsPrec d (vkCoverageToColorLocation x) . showChar '}'

pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION = 1

type VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION = 1

pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME :: CString

pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME <-
        (is_VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME -> True)
  where VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME
          = _VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME

{-# INLINE _VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME #-}

_VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME :: CString
_VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME
  = Ptr "VK_NV_fragment_coverage_to_color\NUL"##

{-# INLINE is_VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME #-}

is_VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME ::
                                                   CString -> Bool
is_VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME
  = eqCStrings _VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME

type VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME =
     "VK_NV_fragment_coverage_to_color"

pattern VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV
        = VkStructureType 1000149000