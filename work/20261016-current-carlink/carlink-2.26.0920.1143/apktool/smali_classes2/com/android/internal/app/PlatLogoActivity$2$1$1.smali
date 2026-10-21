.class Lcom/android/internal/app/PlatLogoActivity$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$2$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    .line 6
    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.intent.action.MAIN"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x10808000

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "com.android.internal.category.PLATLOGO"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-string v0, "PlatLogoActivity"

    .line 32
    .line 33
    const-string v1, "No more eggs."

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
