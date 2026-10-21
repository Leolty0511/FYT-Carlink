.class public Lapp/ActivityMain;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static c:F = -88.0f


# instance fields
.field public a:Landroid/widget/SeekBar;

.field public b:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lapp/ActivityMain;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/ActivityMain;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lapp/ActivityMain;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/ActivityMain;->a:Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/widget/SeekBar;

    invoke-direct {p1, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lapp/ActivityMain;->a:Landroid/widget/SeekBar;

    const/16 v0, 0xe0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 4
    iget-object p1, p0, Lapp/ActivityMain;->a:Landroid/widget/SeekBar;

    new-instance v0, Lapp/ActivityMain$a;

    invoke-direct {v0, p0}, Lapp/ActivityMain$a;-><init>(Lapp/ActivityMain;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 5
    iget-object p1, p0, Lapp/ActivityMain;->a:Landroid/widget/SeekBar;

    const/16 v0, 0xa

    const/16 v1, 0x64

    const/16 v2, 0x38e

    const/16 v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 6
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lapp/ActivityMain;->b:Landroid/widget/TextView;

    const/16 v0, 0x398

    const/16 v2, 0x3e8

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 8
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    const/16 v2, 0x17c

    .line 9
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const-string v1, "<<<"

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v1, Lapp/ActivityMain$b;

    invoke-direct {v1, p0}, Lapp/ActivityMain$b;-><init>(Lapp/ActivityMain;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x258

    const/16 v4, 0x320

    .line 13
    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/view/View;->layout(IIII)V

    const-string v0, ">>>"

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, Lapp/ActivityMain$c;

    invoke-direct {v0, p0}, Lapp/ActivityMain$c;-><init>(Lapp/ActivityMain;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Lapp/ActivityMain$d;

    invoke-direct {v0, p0, p0}, Lapp/ActivityMain$d;-><init>(Lapp/ActivityMain;Landroid/content/Context;)V

    .line 17
    iget-object v2, p0, Lapp/ActivityMain;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    iget-object v2, p0, Lapp/ActivityMain;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
