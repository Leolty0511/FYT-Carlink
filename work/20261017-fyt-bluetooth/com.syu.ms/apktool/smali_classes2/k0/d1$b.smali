.class public Lk0/d1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/d1;


# direct methods
.method public constructor <init>(Lk0/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/d1$b;->a:Lk0/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/d1$b;->a:Lk0/d1;

    iget v1, v0, Lk0/d1;->z:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/d1;->z:I

    .line 2
    :cond_0
    iget v1, v0, Lk0/d1;->z:I

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lk0/d1;->c3()V

    :cond_1
    return-void
.end method
