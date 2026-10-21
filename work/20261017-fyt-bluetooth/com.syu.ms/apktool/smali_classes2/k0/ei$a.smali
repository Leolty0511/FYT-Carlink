.class public Lk0/ei$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ei;


# direct methods
.method public constructor <init>(Lk0/ei;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ei$a;->a:Lk0/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ei$a;->a:Lk0/ei;

    iget v1, v0, Lk0/ei;->D:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/ei;->D:I

    if-gtz v1, :cond_0

    .line 2
    invoke-static {}, Lk0/qt;->f()V

    .line 3
    iget-object v0, p0, Lk0/ei$a;->a:Lk0/ei;

    iget-object v0, v0, Lk0/ei;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
