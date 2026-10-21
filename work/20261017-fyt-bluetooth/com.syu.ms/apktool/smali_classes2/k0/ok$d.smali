.class public Lk0/ok$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ok;


# direct methods
.method public constructor <init>(Lk0/ok;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ok$d;->a:Lk0/ok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ok$d;->a:Lk0/ok;

    iget v1, v0, Lk0/ok;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/ok;->n:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk0/ok;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ok$d;->a:Lk0/ok;

    const/4 v1, 0x5

    iput v1, v0, Lk0/ok;->n:I

    :goto_0
    return-void
.end method
