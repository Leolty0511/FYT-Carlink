.class public Lk0/vb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vb;


# direct methods
.method public constructor <init>(Lk0/vb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vb$b;->a:Lk0/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vb$b;->a:Lk0/vb;

    iget v1, v0, Lk0/vb;->e:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/vb;->e:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/vb;->e:I

    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Lk0/vb;->f3(Lk0/vb;)V

    :cond_1
    return-void
.end method
