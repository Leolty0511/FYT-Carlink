.class public Lk0/pq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pq;


# direct methods
.method public constructor <init>(Lk0/pq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pq$c;->a:Lk0/pq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/pq$c;->a:Lk0/pq;

    invoke-static {v0}, Lk0/pq;->b3(Lk0/pq;)V

    return-void
.end method
