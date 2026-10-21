.class Lcom/android/internal/policy/PhoneWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xd

    .line 4
    .line 5
    if-gt v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$000(Lcom/android/internal/policy/PhoneWindow;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    shl-int/2addr v3, v1

    .line 15
    and-int/2addr v2, v3

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$102(Lcom/android/internal/policy/PhoneWindow;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$002(Lcom/android/internal/policy/PhoneWindow;I)I

    .line 34
    .line 35
    .line 36
    return-void
.end method
