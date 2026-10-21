.class public Lk0/uk$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/uk;


# direct methods
.method public constructor <init>(Lk0/uk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/uk$e;->a:Lk0/uk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/uk$e;->a:Lk0/uk;

    iget v1, v0, Lk0/uk;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/uk;->u:I

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk0/uk;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/uk$e;->a:Lk0/uk;

    const/4 v1, 0x5

    iput v1, v0, Lk0/uk;->u:I

    :goto_0
    return-void
.end method
