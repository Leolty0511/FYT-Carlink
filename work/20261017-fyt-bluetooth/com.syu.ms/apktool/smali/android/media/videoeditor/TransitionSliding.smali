.class public Landroid/media/videoeditor/TransitionSliding;
.super Landroid/media/videoeditor/Transition;
.source "SourceFile"


# static fields
.field public static final DIRECTION_BOTTOM_OUT_TOP_IN:I = 0x3

.field public static final DIRECTION_LEFT_OUT_RIGHT_IN:I = 0x1

.field public static final DIRECTION_RIGHT_OUT_LEFT_IN:I = 0x0

.field public static final DIRECTION_TOP_OUT_BOTTOM_IN:I = 0x2


# instance fields
.field private final mSlidingDirection:I


# direct methods
.method private constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    if-eqz p7, :cond_1

    const/4 p1, 0x1

    if-eq p7, p1, :cond_1

    const/4 p1, 0x2

    if-eq p7, p1, :cond_1

    const/4 p1, 0x3

    if-ne p7, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid direction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput p7, p0, Landroid/media/videoeditor/TransitionSliding;->mSlidingDirection:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    return-void
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/TransitionSliding;->mSlidingDirection:I

    return v0
.end method
