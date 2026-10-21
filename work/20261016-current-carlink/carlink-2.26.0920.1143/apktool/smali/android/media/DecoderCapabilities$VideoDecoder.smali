.class public final enum Landroid/media/DecoderCapabilities$VideoDecoder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DecoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/DecoderCapabilities$VideoDecoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/DecoderCapabilities$VideoDecoder;

.field public static final enum VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 2
    .line 3
    const-string v1, "VIDEO_DECODER_WMV"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/media/DecoderCapabilities$VideoDecoder;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 13
    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    sput-object v1, Landroid/media/DecoderCapabilities$VideoDecoder;->$VALUES:[Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/DecoderCapabilities$VideoDecoder;
    .locals 1

    const-class v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/media/DecoderCapabilities$VideoDecoder;

    return-object p0
.end method

.method public static values()[Landroid/media/DecoderCapabilities$VideoDecoder;
    .locals 1

    sget-object v0, Landroid/media/DecoderCapabilities$VideoDecoder;->$VALUES:[Landroid/media/DecoderCapabilities$VideoDecoder;

    invoke-virtual {v0}, [Landroid/media/DecoderCapabilities$VideoDecoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/DecoderCapabilities$VideoDecoder;

    return-object v0
.end method
