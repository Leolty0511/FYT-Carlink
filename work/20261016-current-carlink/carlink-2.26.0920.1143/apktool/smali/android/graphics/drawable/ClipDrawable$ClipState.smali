.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipState"
.end annotation


# instance fields
.field mGravity:I

.field mOrientation:I

.field private mThemeAttrs:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iput p2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    iput p2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p2, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 13
    .line 14
    iput p2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 15
    .line 16
    iget p1, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 17
    .line 18
    iput p1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    return-object p0
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/ClipDrawable$ClipState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    return-object p1
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method
