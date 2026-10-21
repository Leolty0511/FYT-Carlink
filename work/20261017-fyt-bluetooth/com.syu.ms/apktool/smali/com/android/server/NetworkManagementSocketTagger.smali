.class public final Lcom/android/server/NetworkManagementSocketTagger;
.super Ldalvik/system/SocketTagger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementSocketTagger$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/NetworkManagementSocketTagger$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger$a;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger$a;-><init>()V

    sput-object v0, Lcom/android/server/NetworkManagementSocketTagger;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$b;

    iget v0, v0, Lcom/android/server/NetworkManagementSocketTagger$b;->a:I

    return v0
.end method

.method public static b(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$b;

    iput p0, v0, Lcom/android/server/NetworkManagementSocketTagger$b;->a:I

    return-void
.end method

.method public static c(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$b;

    iput p0, v0, Lcom/android/server/NetworkManagementSocketTagger$b;->b:I

    return-void
.end method
