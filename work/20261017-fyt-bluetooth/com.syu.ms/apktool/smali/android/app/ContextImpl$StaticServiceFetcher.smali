.class abstract Landroid/app/ContextImpl$StaticServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StaticServiceFetcher"
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createStaticService()Ljava/lang/Object;
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Landroid/app/ContextImpl$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;->createStaticService()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ContextImpl$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
