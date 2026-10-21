package android.media;

import android.graphics.ImageFormat;
import android.util.Size;
import java.nio.ByteBuffer;
import libcore.io.Memory;

/* JADX INFO: loaded from: classes.dex */
class ImageUtils {
    private static void directByteBufferCopy(ByteBuffer byteBuffer, int i2, ByteBuffer byteBuffer2, int i3, int i4) {
        Memory.memmove(byteBuffer2, i3, byteBuffer, i2, i4);
    }

    private static Size getEffectivePlaneSizeForImage(Image image, int i2) {
        int format = image.getFormat();
        if (format != 1 && format != 2 && format != 3 && format != 4) {
            if (format == 16) {
                return i2 == 0 ? new Size(image.getWidth(), image.getHeight()) : new Size(image.getWidth(), image.getHeight() / 2);
            }
            if (format != 17) {
                if (format != 20 && format != 32 && format != 256 && format != 4098 && format != 538982489 && format != 540422489) {
                    if (format != 842094169) {
                        if (format == 34) {
                            return new Size(0, 0);
                        }
                        if (format != 35) {
                            if (format != 37 && format != 38) {
                                throw new UnsupportedOperationException(String.format("Invalid image format %d", Integer.valueOf(image.getFormat())));
                            }
                        }
                    }
                }
            }
            return i2 == 0 ? new Size(image.getWidth(), image.getHeight()) : new Size(image.getWidth() / 2, image.getHeight() / 2);
        }
        return new Size(image.getWidth(), image.getHeight());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    public static int getEstimatedNativeAllocBytes(int i2, int i3, int i4, int i5) {
        double d2;
        if (i4 == 1 || i4 == 2) {
            d2 = 4.0d;
        } else if (i4 == 3) {
            d2 = 3.0d;
        } else if (i4 != 4 && i4 != 16) {
            if (i4 != 17) {
                if (i4 != 256 && i4 != 257) {
                    switch (i4) {
                        case 20:
                        case 32:
                        case 4098:
                        case ImageFormat.Y16 /* 540422489 */:
                        case ImageFormat.DEPTH16 /* 1144402265 */:
                            d2 = 2.0d;
                            break;
                        case ImageFormat.Y8 /* 538982489 */:
                            d2 = 1.0d;
                            break;
                        case ImageFormat.YV12 /* 842094169 */:
                            d2 = 1.5d;
                            break;
                        default:
                            switch (i4) {
                                case 34:
                                case 35:
                                case 38:
                                    d2 = 1.5d;
                                    break;
                                case 36:
                                    d2 = 2.0d;
                                    break;
                                case 37:
                                    d2 = 1.25d;
                                    break;
                                default:
                                    throw new UnsupportedOperationException(String.format("Invalid format specified %d", Integer.valueOf(i4)));
                            }
                            break;
                    }
                } else {
                    d2 = 0.3d;
                }
            } else {
                d2 = 1.5d;
            }
        } else {
            d2 = 2.0d;
        }
        return (int) (((double) (i2 * i3)) * d2 * ((double) i5));
    }

    public static int getNumPlanesForFormat(int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
            if (i2 == 16) {
                return 2;
            }
            if (i2 != 17) {
                if (i2 != 256 && i2 != 257) {
                    switch (i2) {
                        case 20:
                        case 32:
                        case 4098:
                        case ImageFormat.Y8 /* 538982489 */:
                        case ImageFormat.Y16 /* 540422489 */:
                        case ImageFormat.DEPTH16 /* 1144402265 */:
                            break;
                        case ImageFormat.YV12 /* 842094169 */:
                            break;
                        default:
                            switch (i2) {
                                case 34:
                                    return 0;
                                case 35:
                                    break;
                                case 36:
                                case 37:
                                case 38:
                                    break;
                                default:
                                    throw new UnsupportedOperationException(String.format("Invalid format specified %d", Integer.valueOf(i2)));
                            }
                            break;
                    }
                }
            }
            return 3;
        }
        return 1;
    }

    public static void imageCopy(Image image, Image image2) {
        int iRemaining;
        if (image == null || image2 == null) {
            throw new IllegalArgumentException("Images should be non-null");
        }
        if (image.getFormat() != image2.getFormat()) {
            throw new IllegalArgumentException("Src and dst images should have the same format");
        }
        if (image.getFormat() == 34 || image2.getFormat() == 34) {
            throw new IllegalArgumentException("PRIVATE format images are not copyable");
        }
        if (image.getFormat() == 36) {
            throw new IllegalArgumentException("Copy of RAW_OPAQUE format has not been implemented");
        }
        if (image.getFormat() == 4098) {
            throw new IllegalArgumentException("Copy of RAW_DEPTH format has not been implemented");
        }
        if (!(image2.getOwner() instanceof ImageWriter)) {
            throw new IllegalArgumentException("Destination image is not from ImageWriter. Only the images from ImageWriter are writable");
        }
        Size size = new Size(image.getWidth(), image.getHeight());
        Size size2 = new Size(image2.getWidth(), image2.getHeight());
        if (!size.equals(size2)) {
            throw new IllegalArgumentException("source image size " + size + " is different with destination image size " + size2);
        }
        Image.Plane[] planes = image.getPlanes();
        Image.Plane[] planes2 = image2.getPlanes();
        for (int i2 = 0; i2 < planes.length; i2++) {
            int rowStride = planes[i2].getRowStride();
            int rowStride2 = planes2[i2].getRowStride();
            ByteBuffer buffer = planes[i2].getBuffer();
            ByteBuffer buffer2 = planes2[i2].getBuffer();
            if (!buffer.isDirect() || !buffer2.isDirect()) {
                throw new IllegalArgumentException("Source and destination ByteBuffers must be direct byteBuffer!");
            }
            if (planes[i2].getPixelStride() != planes2[i2].getPixelStride()) {
                throw new IllegalArgumentException("Source plane image pixel stride " + planes[i2].getPixelStride() + " must be same as destination image pixel stride " + planes2[i2].getPixelStride());
            }
            int iPosition = buffer.position();
            buffer.rewind();
            buffer2.rewind();
            if (rowStride == rowStride2) {
                buffer2.put(buffer);
            } else {
                int iPosition2 = buffer.position();
                int iPosition3 = buffer2.position();
                Size effectivePlaneSizeForImage = getEffectivePlaneSizeForImage(image, i2);
                int pixelStride = planes[i2].getPixelStride() * effectivePlaneSizeForImage.getWidth();
                for (int i3 = 0; i3 < effectivePlaneSizeForImage.getHeight(); i3++) {
                    if (i3 == effectivePlaneSizeForImage.getHeight() - 1 && pixelStride > (iRemaining = buffer.remaining() - iPosition2)) {
                        pixelStride = iRemaining;
                    }
                    directByteBufferCopy(buffer, iPosition2, buffer2, iPosition3, pixelStride);
                    iPosition2 += rowStride;
                    iPosition3 += rowStride2;
                }
            }
            buffer.position(iPosition);
            buffer2.rewind();
        }
    }
}
