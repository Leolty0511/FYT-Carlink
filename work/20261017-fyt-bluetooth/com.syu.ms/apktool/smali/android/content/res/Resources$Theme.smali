.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTheme:I

.field public final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 3
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->createTheme()I

    move-result p1

    iput p1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    return-void
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(IIZ)V

    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->releaseTheme(I)V

    return-void
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 8

    .line 5
    array-length v0, p2

    .line 6
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7
    iput-object p2, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 8
    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    return-object v0
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 8

    .line 9
    array-length v0, p2

    .line 10
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 11
    check-cast p1, Landroid/content/res/XmlBlock$Parser;

    .line 12
    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v4, v2

    iget-object v6, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v0, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p3

    move v3, p4

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 13
    iput-object p2, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 14
    iput-object p1, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    return-object v0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    iput-object p1, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 4
    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    return-object v0
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->getThemeValue(IILandroid/util/TypedValue;Z)Z

    move-result p1

    return p1
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget p1, p1, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1}, Landroid/content/res/AssetManager;->copyTheme(II)V

    return-void
.end method
