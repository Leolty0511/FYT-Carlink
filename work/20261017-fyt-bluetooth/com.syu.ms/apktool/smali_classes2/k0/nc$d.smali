.class public Lk0/nc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nc;


# direct methods
.method public constructor <init>(Lk0/nc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nc$d;->a:Lk0/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nc$d;->a:Lk0/nc;

    iget v1, v0, Lk0/nc;->e:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/nc;->e:I

    .line 3
    :cond_0
    iget v0, v0, Lk0/nc;->e:I

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Ll0/c0;->e()V

    :cond_1
    return-void
.end method
