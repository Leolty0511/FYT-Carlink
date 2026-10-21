.class public Lk0/u$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u;


# direct methods
.method public constructor <init>(Lk0/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u$g;->a:Lk0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u$g;->a:Lk0/u;

    const/4 v1, 0x0

    iput v1, v0, Lk0/u;->A:I

    .line 2
    iput v1, v0, Lk0/u;->z:I

    .line 3
    invoke-static {v0}, Lk0/u;->l3(Lk0/u;)V

    return-void
.end method
