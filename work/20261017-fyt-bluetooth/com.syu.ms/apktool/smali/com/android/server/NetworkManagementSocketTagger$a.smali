.class public final Lcom/android/server/NetworkManagementSocketTagger$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementSocketTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/android/server/NetworkManagementSocketTagger$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/server/NetworkManagementSocketTagger$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger$b;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger$b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementSocketTagger$a;->a()Lcom/android/server/NetworkManagementSocketTagger$b;

    move-result-object v0

    return-object v0
.end method
