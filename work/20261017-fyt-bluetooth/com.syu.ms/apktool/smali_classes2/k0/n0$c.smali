.class public Lk0/n0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n0;


# direct methods
.method public constructor <init>(Lk0/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n0$c;->a:Lk0/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/n0$c;->a:Lk0/n0;

    iget v1, v0, Lk0/n0;->u:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/n0;->u:I

    .line 3
    :cond_0
    iget v0, v0, Lk0/n0;->u:I

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Ll0/c0;->e()V

    :cond_1
    return-void
.end method
