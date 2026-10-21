.class Lcom/android/internal/os/BaseCommand$1;
.super Landroid/os/ShellCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BaseCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BaseCommand;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BaseCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BaseCommand$1;->this$0:Lcom/android/internal/os/BaseCommand;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHelp()V
    .locals 0

    return-void
.end method
