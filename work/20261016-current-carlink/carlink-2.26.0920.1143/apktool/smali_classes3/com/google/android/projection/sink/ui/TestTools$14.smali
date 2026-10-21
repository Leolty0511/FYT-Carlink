.class Lcom/google/android/projection/sink/ui/TestTools$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/TestTools;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/sink/navigation/NavigationFocusManager;Lcom/google/android/projection/sink/sensors/SensorManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/TestTools;

.field final synthetic val$nightModeButtons:[I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    iput-object p2, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->val$nightModeButtons:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->val$nightModeButtons:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget v4, v0, v3

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 11
    .line 12
    invoke-static {v5}, Lcom/google/android/projection/sink/ui/TestTools;->access$900(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Landroid/widget/ToggleButton;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-ne v4, v6, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v4, v2

    .line 31
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sget v1, Lcom/google/android/projection/sink/R$id;->night_mode_auto:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sget v1, Lcom/google/android/projection/sink/R$id;->night_mode_day:I

    .line 63
    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 73
    .line 74
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    sget v0, Lcom/google/android/projection/sink/R$id;->night_mode_night:I

    .line 85
    .line 86
    if-ne p1, v0, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$14;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 95
    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_2
    return-void
.end method
