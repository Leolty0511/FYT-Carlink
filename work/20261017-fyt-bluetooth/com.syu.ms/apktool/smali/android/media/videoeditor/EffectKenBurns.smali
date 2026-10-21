.class public Landroid/media/videoeditor/EffectKenBurns;
.super Landroid/media/videoeditor/Effect;
.source "SourceFile"


# instance fields
.field private mEndRect:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p7

    .line 2
    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Effect;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iput-object p3, p0, Landroid/media/videoeditor/EffectKenBurns;->mStartRect:Landroid/graphics/Rect;

    .line 6
    iput-object p4, p0, Landroid/media/videoeditor/EffectKenBurns;->mEndRect:Landroid/graphics/Rect;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid End rectangle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Start rectangle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEndRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/EffectKenBurns;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getKenBurnsSettings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 6
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 7
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 8
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/EffectKenBurns;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method
