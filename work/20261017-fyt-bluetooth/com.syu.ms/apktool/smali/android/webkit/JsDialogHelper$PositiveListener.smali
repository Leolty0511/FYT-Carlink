.class Landroid/webkit/JsDialogHelper$PositiveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositiveListener"
.end annotation


# instance fields
.field private final mEdit:Landroid/widget/EditText;

.field public final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    iget-object p2, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
