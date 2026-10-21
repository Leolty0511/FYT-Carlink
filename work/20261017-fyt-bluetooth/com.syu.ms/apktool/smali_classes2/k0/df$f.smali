.class public Lk0/df$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/df;


# direct methods
.method public constructor <init>(Lk0/df;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/df$f;->a:Lk0/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/df$f;->a:Lk0/df;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lk0/df;->q3(Lk0/df;I)V

    return-void
.end method
