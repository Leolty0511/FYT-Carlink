.class Landroid/webkit/JsDialogHelper$CancelListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelListener"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method private constructor <init>(Landroid/webkit/JsDialogHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
