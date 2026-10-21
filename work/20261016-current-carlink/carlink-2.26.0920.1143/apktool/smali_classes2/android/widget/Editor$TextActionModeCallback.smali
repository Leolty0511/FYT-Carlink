.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private final mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 19
    .line 20
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3700(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-static {p2}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3800(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3900(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {p1}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p1}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$InsertionPointCursorController;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-static {p2}, Landroid/widget/Editor$InsertionPointCursorController;->access$4200(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 p1, 0x0

    .line 87
    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method private canAssist()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    :cond_1
    const/4 v0, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    const v3, 0x1040003

    .line 17
    .line 18
    .line 19
    const v4, 0x1020020

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v3, 0x78

    .line 27
    .line 28
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    const v3, 0x1040001

    .line 49
    .line 50
    .line 51
    const v4, 0x1020021

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v3, 0x63

    .line 59
    .line 60
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    const v3, 0x104000b

    .line 81
    .line 82
    .line 83
    const v4, 0x1020022

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/16 v3, 0x76

    .line 91
    .line 92
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 100
    .line 101
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v1, 0x1

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    const/4 v0, 0x7

    .line 113
    const v3, 0x10405b3

    .line 114
    .line 115
    .line 116
    const v4, 0x1020035

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 127
    .line 128
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/widget/TextView;->canRequestAutofill()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 139
    .line 140
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    :cond_4
    const/16 v0, 0xa

    .line 157
    .line 158
    const v3, 0x104001a

    .line 159
    .line 160
    .line 161
    const v4, 0x1020043

    .line 162
    .line 163
    .line 164
    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const/high16 v3, -0x80000000

    .line 169
    .line 170
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 174
    .line 175
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    const/16 v0, 0xb

    .line 186
    .line 187
    const v3, 0x1040019

    .line 188
    .line 189
    .line 190
    const v4, 0x1020031

    .line 191
    .line 192
    .line 193
    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateAssistMenuItem(Landroid/view/Menu;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method private updateAssistMenuItem(Landroid/view/Menu;)V
    .locals 4

    .line 1
    const v0, 0x1020041

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->canAssist()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {p1, v0, v0, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;)Lcom/android/internal/logging/MetricsLogger;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Landroid/metrics/LogMaker;

    .line 51
    .line 52
    const/16 v2, 0x3a8

    .line 53
    .line 54
    invoke-direct {v0, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getLogType()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    const v3, 0x1020034

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    move v4, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_1
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x9

    .line 43
    .line 44
    const v4, 0x104055f

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v2, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    if-nez v0, :cond_3

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_2
    return-void
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectAllText()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x102001f

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    const v2, 0x104000d

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 15
    .line 16
    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const v0, 0x1020041

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v0, v2, :cond_4

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {p2, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, p2}, Landroid/view/textclassifier/TextClassification;->createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {p2, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_0
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 106
    .line 107
    invoke-static {p2}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;)Lcom/android/internal/logging/MetricsLogger;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const/16 v0, 0x3a9

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getLogType()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 123
    .line 124
    .line 125
    return v1

    .line 126
    :cond_4
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 127
    .line 128
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/text/Spannable;

    .line 39
    .line 40
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 41
    .line 42
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 55
    .line 56
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/widget/TextView;->canProcessText()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 67
    .line 68
    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 69
    .line 70
    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return v2

    .line 87
    :cond_3
    :goto_0
    iget-boolean p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 104
    .line 105
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onDestroyActionMode()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$102(Landroid/widget/Editor;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/text/Spannable;

    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 59
    .line 60
    iget-object p1, p1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 38
    .line 39
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v0, 0x1

    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 56
    .line 57
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 66
    .line 67
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 76
    .line 77
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 86
    .line 87
    invoke-virtual {p1, p2, v1, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 91
    .line 92
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 98
    .line 99
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 100
    .line 101
    iget v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 102
    .line 103
    int-to-float v0, v0

    .line 104
    add-float/2addr p2, v0

    .line 105
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 110
    .line 111
    iget p2, p1, Landroid/widget/Editor;->mCursorCount:I

    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    if-ne p2, v1, :cond_2

    .line 115
    .line 116
    iget-object p1, p1, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    const/4 p2, 0x0

    .line 119
    aget-object p1, p1, p2

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 126
    .line 127
    iget-object p2, p2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    aget-object p2, p2, v0

    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 136
    .line 137
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 138
    .line 139
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 140
    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    int-to-float v1, v1

    .line 146
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 147
    .line 148
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    int-to-float v2, v2

    .line 155
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    int-to-float v3, v3

    .line 164
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 165
    .line 166
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 167
    .line 168
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iget p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 173
    .line 174
    add-int/2addr p1, p2

    .line 175
    int-to-float p1, p1

    .line 176
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_2
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 189
    .line 190
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 203
    .line 204
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    const/4 v3, 0x0

    .line 217
    invoke-static {v1, v3, v2}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    int-to-float v1, v1

    .line 222
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    int-to-float v3, v3

    .line 229
    add-int/2addr p2, v0

    .line 230
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    iget p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 235
    .line 236
    add-int/2addr p1, p2

    .line 237
    int-to-float p1, p1

    .line 238
    invoke-virtual {v2, v1, v3, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 239
    .line 240
    .line 241
    :goto_0
    iget-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 242
    .line 243
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iget-object p2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 252
    .line 253
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {p2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 262
    .line 263
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 264
    .line 265
    int-to-float p1, p1

    .line 266
    add-float/2addr v0, p1

    .line 267
    float-to-double v0, v0

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v0

    .line 272
    double-to-int v0, v0

    .line 273
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 274
    .line 275
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 276
    .line 277
    int-to-float p2, p2

    .line 278
    add-float/2addr v1, p2

    .line 279
    float-to-double v1, v1

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 281
    .line 282
    .line 283
    move-result-wide v1

    .line 284
    double-to-int v1, v1

    .line 285
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 286
    .line 287
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 288
    .line 289
    add-float/2addr v2, p1

    .line 290
    float-to-double v2, v2

    .line 291
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 292
    .line 293
    .line 294
    move-result-wide v2

    .line 295
    double-to-int p1, v2

    .line 296
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 297
    .line 298
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 299
    .line 300
    add-float/2addr v2, p2

    .line 301
    float-to-double v2, v2

    .line 302
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 303
    .line 304
    .line 305
    move-result-wide v2

    .line 306
    double-to-int p2, v2

    .line 307
    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateAssistMenuItem(Landroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    return p1
.end method
