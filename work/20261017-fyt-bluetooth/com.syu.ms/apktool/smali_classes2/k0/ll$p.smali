.class public Lk0/ll$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$p;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ll$p;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk0/ll;->z:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 2
    iget v1, v0, Lk0/ll;->P:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lk0/ll;->h3(Lk0/ll;Z)V

    :cond_0
    return-void
.end method
