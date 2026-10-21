.class public Landroid/media/videoeditor/EffectColor;
.super Landroid/media/videoeditor/Effect;
.source "SourceFile"


# static fields
.field public static final GRAY:I = 0x7f7f7f

.field public static final GREEN:I = 0xff00

.field public static final PINK:I = 0xff66cc

.field public static final TYPE_COLOR:I = 0x1

.field public static final TYPE_FIFTIES:I = 0x5

.field public static final TYPE_GRADIENT:I = 0x2

.field public static final TYPE_NEGATIVE:I = 0x4

.field public static final TYPE_SEPIA:I = 0x3


# instance fields
.field private final mColor:I

.field private final mType:I


# direct methods
.method private constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Effect;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    const/4 p1, 0x1

    if-eq p7, p1, :cond_2

    const/4 p1, 0x2

    if-eq p7, p1, :cond_2

    const/4 p1, 0x3

    if-eq p7, p1, :cond_1

    const/4 p1, 0x4

    if-eq p7, p1, :cond_1

    const/4 p1, 0x5

    if-ne p7, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroid/media/videoeditor/EffectColor;->mColor:I

    goto :goto_2

    :cond_2
    const p1, 0xff00

    if-eq p8, p1, :cond_4

    const p1, 0x7f7f7f

    if-eq p8, p1, :cond_4

    const p1, 0xff66cc

    if-ne p8, p1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Color: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_4
    :goto_1
    iput p8, p0, Landroid/media/videoeditor/EffectColor;->mColor:I

    .line 7
    :goto_2
    iput p7, p0, Landroid/media/videoeditor/EffectColor;->mType:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/EffectColor;->mColor:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/EffectColor;->mType:I

    return v0
.end method
