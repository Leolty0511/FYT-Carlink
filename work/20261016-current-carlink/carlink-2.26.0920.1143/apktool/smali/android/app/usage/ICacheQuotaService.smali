.class public interface abstract Landroid/app/usage/ICacheQuotaService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/ICacheQuotaService$Stub;
    }
.end annotation


# virtual methods
.method public abstract computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation
.end method
