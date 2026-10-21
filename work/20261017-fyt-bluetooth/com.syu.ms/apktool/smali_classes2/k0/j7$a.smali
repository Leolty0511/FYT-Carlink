.class public Lk0/j7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j7;


# direct methods
.method public constructor <init>(Lk0/j7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j7$a;->a:Lk0/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/j7$a;->a:Lk0/j7;

    iget v1, v0, Lk0/j7;->j:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/j7;->j:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/j7;->j:I

    if-gtz v1, :cond_1

    .line 4
    invoke-static {v0}, Lk0/j7;->d3(Lk0/j7;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lk0/qt;->a(I)V

    :cond_1
    return-void
.end method
