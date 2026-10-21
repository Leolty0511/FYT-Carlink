.class public Lk0/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j0;


# direct methods
.method public constructor <init>(Lk0/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j0$a;->a:Lk0/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/j0$a;->a:Lk0/j0;

    iget v1, v0, Lk0/j0;->b:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/j0;->b:I

    .line 2
    :cond_0
    iget v0, v0, Lk0/j0;->b:I

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lk0/j0;->a3()V

    :cond_1
    return-void
.end method
