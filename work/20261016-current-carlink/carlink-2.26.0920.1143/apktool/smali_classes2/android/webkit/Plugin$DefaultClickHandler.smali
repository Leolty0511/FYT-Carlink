.class Landroid/webkit/Plugin$DefaultClickHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/Plugin$PreferencesClickHandler;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultClickHandler"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Landroid/webkit/Plugin;


# direct methods
.method private constructor <init>(Landroid/webkit/Plugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;)V

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/webkit/Plugin;->access$200(Landroid/webkit/Plugin;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/webkit/Plugin;->access$100(Landroid/webkit/Plugin;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x104000a

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 8
    .line 9
    return-void
.end method
