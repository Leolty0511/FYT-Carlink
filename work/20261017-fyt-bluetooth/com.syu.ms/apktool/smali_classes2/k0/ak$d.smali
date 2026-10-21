.class public Lk0/ak$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ak;


# direct methods
.method public constructor <init>(Lk0/ak;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ak$d;->a:Lk0/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ak$d;->a:Lk0/ak;

    iget-object v0, v0, Lk0/ak;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ak$d;->a:Lk0/ak;

    const/16 v1, 0xa

    iput v1, v0, Lk0/ak;->u:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/ak;->f:I

    .line 4
    iput v1, v0, Lk0/ak;->g:I

    return-void
.end method
