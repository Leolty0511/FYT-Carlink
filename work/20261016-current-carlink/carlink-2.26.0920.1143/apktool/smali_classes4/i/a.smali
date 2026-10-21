.class public final synthetic Li/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lj/c;

.field public final synthetic e:Lcom/syu/carlink/fragment/CarMarkFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj/c;Lcom/syu/carlink/fragment/CarMarkFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a;->b:Ljava/lang/String;

    iput-object p2, p0, Li/a;->c:Ljava/lang/String;

    iput-object p3, p0, Li/a;->d:Lj/c;

    iput-object p4, p0, Li/a;->e:Lcom/syu/carlink/fragment/CarMarkFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Li/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "$selected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Li/a;->d:Lj/c;

    .line 9
    .line 10
    const-string v2, "$this_apply"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Li/a;->e:Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 16
    .line 17
    const-string v3, "this$0"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Li/a;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3, v0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lez v3, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-object v1, v1, Lj/c;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "drawable"

    .line 52
    .line 53
    invoke-virtual {v3, v0, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "context.resources.openRawResource(resid)"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lt/b;->l(Ljava/io/InputStream;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/syu/carlink/MainActivity;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    :goto_1
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v1, v0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method
