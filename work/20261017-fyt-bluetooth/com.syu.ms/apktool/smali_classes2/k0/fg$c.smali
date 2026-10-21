.class public Lk0/fg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fg;


# direct methods
.method public constructor <init>(Lk0/fg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fg$c;->a:Lk0/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fg$c;->a:Lk0/fg;

    iget v1, v0, Lk0/fg;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/fg;->f:I

    .line 2
    invoke-static {v0}, Lk0/fg;->e3(Lk0/fg;)V

    .line 3
    iget-object v0, p0, Lk0/fg$c;->a:Lk0/fg;

    iget v1, v0, Lk0/fg;->f:I

    if-gtz v1, :cond_0

    .line 4
    invoke-static {v0}, Lk0/fg;->f3(Lk0/fg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
