#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkExportFenceCreateInfoKHR
       (VkExportFenceCreateInfoKHR(..)) where
import           Foreign.Storable                                             (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagsKHR (VkExternalFenceHandleTypeFlagsKHR)
import           Graphics.Vulkan.Types.Enum.VkStructureType                   (VkStructureType)
import           Graphics.Vulkan.Types.Struct.VkFenceCreateInfo               (VkFenceCreateInfo)
import           Graphics.Vulkan.Types.StructMembers
import           System.IO.Unsafe                                             (unsafeDupablePerformIO)

-- | > typedef struct VkExportFenceCreateInfoKHR {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkExternalFenceHandleTypeFlagsKHR handleTypes;
--   > } VkExportFenceCreateInfoKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkExportFenceCreateInfoKHR.html VkExportFenceCreateInfoKHR registry at www.khronos.org>
data VkExportFenceCreateInfoKHR = VkExportFenceCreateInfoKHR## Addr##
                                                              ByteArray##

instance Eq VkExportFenceCreateInfoKHR where
        (VkExportFenceCreateInfoKHR## a _) ==
          x@(VkExportFenceCreateInfoKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkExportFenceCreateInfoKHR where
        (VkExportFenceCreateInfoKHR## a _) `compare`
          x@(VkExportFenceCreateInfoKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkExportFenceCreateInfoKHR where
        sizeOf ~_ = #{size VkExportFenceCreateInfoKHR}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkExportFenceCreateInfoKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkExportFenceCreateInfoKHR where
        unsafeAddr (VkExportFenceCreateInfoKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkExportFenceCreateInfoKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkExportFenceCreateInfoKHR##
              (plusAddr## (byteArrayContents## b) off)
              b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkExportFenceCreateInfoKHR where
        type StructFields VkExportFenceCreateInfoKHR =
             '["sType", "pNext", "handleTypes"] -- ' closing tick for hsc2hs
        type CUnionType VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type StructExtends VkExportFenceCreateInfoKHR =
             '[VkFenceCreateInfo] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-} HasVkSType VkExportFenceCreateInfoKHR
         where
        type VkSTypeMType VkExportFenceCreateInfoKHR = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkExportFenceCreateInfoKHR, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkExportFenceCreateInfoKHR, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkExportFenceCreateInfoKHR, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkExportFenceCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkExportFenceCreateInfoKHR where
        type FieldType "sType" VkExportFenceCreateInfoKHR = VkStructureType
        type FieldOptional "sType" VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkExportFenceCreateInfoKHR =
             #{offset VkExportFenceCreateInfoKHR, sType}
        type FieldIsArray "sType" VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkExportFenceCreateInfoKHR, sType}

instance CanReadField "sType" VkExportFenceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkExportFenceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-} HasVkPNext VkExportFenceCreateInfoKHR
         where
        type VkPNextMType VkExportFenceCreateInfoKHR = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkExportFenceCreateInfoKHR, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkExportFenceCreateInfoKHR, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkExportFenceCreateInfoKHR, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkExportFenceCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkExportFenceCreateInfoKHR where
        type FieldType "pNext" VkExportFenceCreateInfoKHR = Ptr Void
        type FieldOptional "pNext" VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkExportFenceCreateInfoKHR =
             #{offset VkExportFenceCreateInfoKHR, pNext}
        type FieldIsArray "pNext" VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkExportFenceCreateInfoKHR, pNext}

instance CanReadField "pNext" VkExportFenceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkExportFenceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkHandleTypes VkExportFenceCreateInfoKHR where
        type VkHandleTypesMType VkExportFenceCreateInfoKHR =
             VkExternalFenceHandleTypeFlagsKHR

        {-# NOINLINE vkHandleTypes #-}
        vkHandleTypes x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkExportFenceCreateInfoKHR, handleTypes})

        {-# INLINE vkHandleTypesByteOffset #-}
        vkHandleTypesByteOffset ~_
          = #{offset VkExportFenceCreateInfoKHR, handleTypes}

        {-# INLINE readVkHandleTypes #-}
        readVkHandleTypes p
          = peekByteOff p #{offset VkExportFenceCreateInfoKHR, handleTypes}

        {-# INLINE writeVkHandleTypes #-}
        writeVkHandleTypes p
          = pokeByteOff p #{offset VkExportFenceCreateInfoKHR, handleTypes}

instance {-# OVERLAPPING #-}
         HasField "handleTypes" VkExportFenceCreateInfoKHR where
        type FieldType "handleTypes" VkExportFenceCreateInfoKHR =
             VkExternalFenceHandleTypeFlagsKHR
        type FieldOptional "handleTypes" VkExportFenceCreateInfoKHR = 'True -- ' closing tick for hsc2hs
        type FieldOffset "handleTypes" VkExportFenceCreateInfoKHR =
             #{offset VkExportFenceCreateInfoKHR, handleTypes}
        type FieldIsArray "handleTypes" VkExportFenceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkExportFenceCreateInfoKHR, handleTypes}

instance CanReadField "handleTypes" VkExportFenceCreateInfoKHR
         where
        {-# INLINE getField #-}
        getField = vkHandleTypes

        {-# INLINE readField #-}
        readField = readVkHandleTypes

instance CanWriteField "handleTypes" VkExportFenceCreateInfoKHR
         where
        {-# INLINE writeField #-}
        writeField = writeVkHandleTypes

instance Show VkExportFenceCreateInfoKHR where
        showsPrec d x
          = showString "VkExportFenceCreateInfoKHR {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkHandleTypes = " .
                            showsPrec d (vkHandleTypes x) . showChar '}'