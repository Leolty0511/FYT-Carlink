.class public Lk0/hj$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hj;


# direct methods
.method public constructor <init>(Lk0/hj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hj$d;->a:Lk0/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/hj$d;->a:Lk0/hj;

    iget v1, v0, Lk0/hj;->b:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/hj;->b:I

    .line 2
    :cond_0
    iget v0, v0, Lk0/hj;->b:I

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lk0/hj;->a3()V

    :cond_1
    return-void
.end method
