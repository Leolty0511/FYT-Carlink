.class public Lcom/syu/bt/page/pop/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;,
        Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private final debug:Z

.field public dlg_height:I

.field public dlg_width:I

.field private mInitialColor:I

.field private mListener:Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->debug:Z

    .line 21
    const-string v0, "ColorPicker"

    iput-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->context:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mListener:Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    .line 53
    iput p2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mInitialColor:I

    .line 54
    iput-object p3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->title:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 38
    const/high16 v0, -0x1000000

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/syu/bt/page/pop/ColorPickerDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/pop/ColorPickerDialog;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mInitialColor:I

    return v0
.end method

.method static synthetic access$1(Lcom/syu/bt/page/pop/ColorPickerDialog;)Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mListener:Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getmInitialColor()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mInitialColor:I

    return v0
.end method

.method public getmListener()Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mListener:Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 62
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    .line 63
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2147ae    # 0.63f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_width:I

    .line 64
    new-instance v1, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->context:Landroid/content/Context;

    iget v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    iget v4, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_width:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;-><init>(Lcom/syu/bt/page/pop/ColorPickerDialog;Landroid/content/Context;II)V

    .line 65
    .local v1, "myView":Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;
    invoke-virtual {p0, v1}, Lcom/syu/bt/page/pop/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/pop/ColorPickerDialog;->setTitle(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_color_bk"

    invoke-virtual {v3, v4, v5, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->title:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setmInitialColor(I)V
    .locals 0
    .param p1, "mInitialColor"    # I

    .prologue
    .line 403
    iput p1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mInitialColor:I

    .line 404
    return-void
.end method

.method public setmListener(Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog;->mListener:Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    .line 412
    return-void
.end method
